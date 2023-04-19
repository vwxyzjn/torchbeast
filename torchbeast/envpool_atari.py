import envpool
import gym
import numpy as np

class EnvPoolSingleEnvWrapepr(gym.Env):
    def __init__(self, env) -> None:
        self.env = env
        self.action_space = env.action_space
        self.observation_space = env.observation_space

    def reset(self):
        return self.env.reset()[0]

    def step(self, action):
        obs, reward, done, info = self.env.step(np.array([action]))
        if done[0]:
            obs = self.env.reset()
        return obs[0], reward[0], done[0], {}

ATARI_MAX_FRAMES = int(
    108000 / 4
)  # 108000 is the max number of frames in an Atari game, divided by 4 to account for frame skipping


def create_env(env_id):
    envs = envpool.make(
        env_id,
        env_type="gym",
        num_envs=1,
        episodic_life=False,  # Machado et al. 2017 (Revisitng ALE: Eval protocols) p. 6
        repeat_action_probability=0.25,  # Machado et al. 2017 (Revisitng ALE: Eval protocols) p. 12
        noop_max=1,  # Machado et al. 2017 (Revisitng ALE: Eval protocols) p. 12 (no-op is deprecated in favor of sticky action, right?)
        full_action_space=True,  # Machado et al. 2017 (Revisitng ALE: Eval protocols) Tab. 5
        max_episode_steps=ATARI_MAX_FRAMES,  # Hessel et al. 2018 (Rainbow DQN), Table 3, Max frames per episode
    )
    print("=======env", envs)
    envs = EnvPoolSingleEnvWrapepr(envs)
    return envs