apt update
yes | apt-get install python3.10-tk

cd /workspace

git clone https://github.com/bmaltais/kohya_ss.git

cd /workspace/kohya_ss

#git checkout 429d2f282fb32e7c63b5e5fe6dbc1ddef92bba58

python3 -m venv venv

source venv/bin/activate

yes | apt-get install python3.10-tk

pip install fastapi==0.99.1

pip install scipy

./setup.sh -n