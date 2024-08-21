# create a work directory
mkdir Xinference
cd Xinference

# set up virtual environment
python3 -m venv venv
source venv/bin/activate

# install
pip install xinference -i https://pypi.tuna.tsinghua.edu.cn/simple
# upgrade
pip install -U xinference -i https://pypi.tuna.tsinghua.edu.cn/simple

# set up
nohup xinference-local --host 0.0.0.0 --port 9998 &

# check log
tail -n 1 -f nohup.out
