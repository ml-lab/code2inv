import argparse
import os

cmd_opt = argparse.ArgumentParser(description='Argparser')
cmd_opt.add_argument('-data_root', default=None, help='root of dataset')
cmd_opt.add_argument('-file_list', default=None, help='list of programs')
cmd_opt.add_argument('-init_model_dump', default=None, help='init model dump')
cmd_opt.add_argument('-save_dir', default=None, help='root for output')
cmd_opt.add_argument('-att_dir', default=None, help='root for att output')
cmd_opt.add_argument('-log_file', default=None, help='log file')
cmd_opt.add_argument('-boogie_exe', default=None, help='boogie binary file')
cmd_opt.add_argument('-only_use_z3', default=None, type=bool, help='check everything use z3')
cmd_opt.add_argument('-aggressive_check', default=0, type=int, help='penalize verbose/unnecessary sub expression')
cmd_opt.add_argument('-ctx', default='cpu', help='cpu/gpu')
cmd_opt.add_argument('-inv_reward_type', default='any', help='any/ordered')
cmd_opt.add_argument('-phase', default='test', help='train/test')
cmd_opt.add_argument('-train_frac', default=0.9, type=float, help='fraction for training')
cmd_opt.add_argument('-tune_test', default=0, type=int, help='active search or not')

cmd_opt.add_argument('-seed', default=1, type=int, help='random seed')
cmd_opt.add_argument('-use_ce', default=0, type=int, help='whether use counter examples')
cmd_opt.add_argument('-rl_batchsize', default=1, type=int, help='batch size for rl training')
cmd_opt.add_argument('-single_sample', default=None, type=int, help='tune single program')
cmd_opt.add_argument('-replay_memsize', default=100, type=int, help='replay memsize')
cmd_opt.add_argument('-num_epochs', default=10000, type=int, help='num epochs')
cmd_opt.add_argument('-embedding_size', default=128, type=int, help='embedding size')
cmd_opt.add_argument('-s2v_level', default=10, type=int, help='# propagations of s2v')
cmd_opt.add_argument('-ce_batchsize', default=100, type=int, help='batchsize for counter example check')

cmd_opt.add_argument('-list_pred', default='>,<,==,>=,<=', help='list of predicates allowed')
cmd_opt.add_argument('-list_op', default='+,-,*', help='list of operators allowed')
cmd_opt.add_argument('-max_depth', default=2, type=int, help='max depth of sub_expr')
cmd_opt.add_argument('-max_and', default=2, type=int, help='max # and allowed')
cmd_opt.add_argument('-max_or', default=1, type=int, help='max # or allowed')

cmd_opt.add_argument('-attention', default=1, type=int, help='attention for embedding')
cmd_opt.add_argument('-exit_on_find', default=0, type=int, help='exit when found')

cmd_opt.add_argument('-decoder_model', default='AssertAwareRNN', help='decoder model')
cmd_opt.add_argument('-learning_rate', default=0.001, type=float, help='random seed')

cmd_args, _ = cmd_opt.parse_known_args()

start_time = None
import time
def tic():
    global start_time
    start_time = time.time()

def toc():
    global start_time
    cur_time = time.time()
    return cur_time - start_time 
if cmd_args.save_dir is not None:
    if not os.path.isdir(cmd_args.save_dir):
        os.makedirs(cmd_args.save_dir)
print(cmd_args)
