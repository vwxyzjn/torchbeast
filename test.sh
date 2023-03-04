taskset --cpu-list 0,1,2,3  python monobeast.py --exp-name monobeast_4cpu --track --env BreakoutNoFrameskip-v4 --num_actors 56 --total_steps 10000000 --learning_rate 0.0006 --epsilon 0.01 --entropy_cost 0.01 --batch_size 32 --unroll_length 20 --num_threads 1
taskset --cpu-list 4,5,6,7 python monobeast.py --exp-name monobeast_4cpu --disable_cuda --track --env BreakoutNoFrameskip-v4 --num_actors 56 --total_steps 10000000 --learning_rate 0.0006 --epsilon 0.01 --entropy_cost 0.01 --batch_size 32 --unroll_length 20 --num_threads 1
CUDA_VISIBLE_DEVICES="1" taskset --cpu-list 8,9,10,20,12,13,14,15 python monobeast.py --exp-name monobeast_8cpu --track --env BreakoutNoFrameskip-v4 --num_actors 56 --total_steps 10000000 --learning_rate 0.0006 --epsilon 0.01 --entropy_cost 0.01 --batch_size 32 --unroll_length 20 --num_threads 1
CUDA_VISIBLE_DEVICES="1" taskset --cpu-list 0,1,2,3,4,5,6,7,8,9,10,20,12,13,14,15 python monobeast.py --exp-name monobeast_16cpu --track --env BreakoutNoFrameskip-v4 --num_actors 56 --total_steps 10000000 --learning_rate 0.0006 --epsilon 0.01 --entropy_cost 0.01 --batch_size 32 --unroll_length 20 --num_threads 1
CUDA_VISIBLE_DEVICES="1" taskset --cpu-list 0,1,2,3,4,5,6,7,8,9,10,20,12,13,14,15 python monobeast.py --exp-name monobeast_16cpu --track --env BreakoutNoFrameskip-v4 --num_actors 56 --total_steps 10000000 --learning_rate 0.0006 --epsilon 0.01 --entropy_cost 0.01 --batch_size 32 --unroll_length 20 --num_threads 1
CUDA_VISIBLE_DEVICES="1" taskset --cpu-list 0,1,2,3,4,5,6,7,8,9,10,20,12,13,14,15 python monobeast.py --exp-name monobeast_16cpu --track --env BreakoutNoFrameskip-v4 --num_actors 56 --total_steps 10000000 --learning_rate 0.0006 --epsilon 0.01 --entropy_cost 0.01 --batch_size 32 --unroll_length 20 --num_threads 1

CUDA_VISIBLE_DEVICES="1"  python monobeast.py --exp-name monobeast_24cpu --track --env BreakoutNoFrameskip-v4 --num_actors 56 --total_steps 10000000 --learning_rate 0.0006 --epsilon 0.01 --entropy_cost 0.01 --batch_size 32 --unroll_length 20 --num_threads 1


CUDA_VISIBLE_DEVICES="0"  python monobeast.py --exp-name monobeast_24cpu --track --env BreakoutNoFrameskip-v4 --num_actors 56 --total_steps 10000000 --learning_rate 0.0006 --epsilon 0.01 --entropy_cost 0.01 --batch_size 32 --unroll_length 20 --num_threads 1


CUDA_VISIBLE_DEVICES="0"  python monobeast.py --exp-name monobeast_24cpu --track --env SpaceInvadersNoFrameskip-v4 --num_actors 56 --total_steps 10000000 --learning_rate 0.0006 --epsilon 0.01 --entropy_cost 0.01 --batch_size 32 --unroll_length 20 --num_threads 1
CUDA_VISIBLE_DEVICES="0"  python monobeast.py --exp-name monobeast_24cpu --track --env SpaceInvadersNoFrameskip-v4 --num_actors 56 --total_steps 10000000 --learning_rate 0.0006 --epsilon 0.01 --entropy_cost 0.01 --batch_size 32 --unroll_length 20 --num_threads 1
CUDA_VISIBLE_DEVICES="0"  python monobeast.py --exp-name monobeast_24cpu --track --env SpaceInvadersNoFrameskip-v4 --num_actors 56 --total_steps 10000000 --learning_rate 0.0006 --epsilon 0.01 --entropy_cost 0.01 --batch_size 32 --unroll_length 20 --num_threads 1

CUDA_VISIBLE_DEVICES="0"  python monobeast.py --exp-name monobeast_24cpu --track --env BreakoutNoFrameskip-v4 --num_actors 56 --total_steps 50000000 --learning_rate 0.0006 --epsilon 0.01 --entropy_cost 0.01 --batch_size 32 --unroll_length 20 --num_threads 1
taskset --cpu-list 0,1,2,3,4,5,6,7,8,9,10,20,12,13,14,15 python monobeast.py --exp-name monobeast_16cpu  --num_actors 56 --total_steps 50000000 --learning_rate 0.0006 --epsilon 0.01 --entropy_cost 0.01 --batch_size 32 --unroll_length 20 --num_threads 1

CUDA_VISIBLE_DEVICES="0"  python monobeast.py --exp-name monobeast_24cpu --track --env BreakoutNoFrameskip-v4 --num_actors 56 --total_steps 50000000 --learning_rate 0.0006 --epsilon 0.01 --entropy_cost 0.01 --batch_size 32 --unroll_length 20 --num_threads 1


CUDA_VISIBLE_DEVICES="0"  python monobeast.py --env BreakoutNoFrameskip-v4 --num_actors 56 --total_steps 50000000 --learning_rate 0.0006 --epsilon 0.01 --entropy_cost 0.01 --batch_size 32 --unroll_length 20 --num_threads 1


python monobeast_study.py --env BreakoutNoFrameskip-v4 --num_actors 56 --total_steps 50000000 --learning_rate 0.0006 --epsilon 0.01 --entropy_cost 0.01 --batch_size 32 --unroll_length 20 --num_threads 1
CUDA_VISIBLE_DEVICES="-1" python monobeast_study.py --env BreakoutNoFrameskip-v4 --num_actors 56 --total_steps 20000 --learning_rate 0.0006 --epsilon 0.01 --entropy_cost 0.01 --batch_size 32 --unroll_length 20 --num_threads 1