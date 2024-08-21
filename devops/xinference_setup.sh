# create a work directory
mkdir Xinference
cd Xinference

# set environment variables
export XINFERENCE_HOME=$(pwd)
export XINFERENCE_ENDPOINT="http://127.0.0.1:9998"
export XINFERENCE_MODEL_SRC="modelscope"
# export XINFERENCE_HEALTH_CHECK_ATTEMPTS=3
# export XINFERENCE_HEALTH_CHECK_INTERVAL=3
# export XINFERENCE_DISABLE_HEALTH_CHECK
# export XINFERENCE_DISABLE_METRICS

# set up virtual environment
python3 -m venv venv
source venv/bin/activate

# install
pip install xinference -i https://pypi.tuna.tsinghua.edu.cn/simple
# upgrade
# pip install -U xinference -i https://pypi.tuna.tsinghua.edu.cn/simple

# set up
nohup xinference-local --host 0.0.0.0 --port 9998 &

# check log
tail -n 1 -f nohup.out
