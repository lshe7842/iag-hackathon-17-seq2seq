# Installation on AWS

Create an EC2 instance (p2.xlarge) on AWS

Start up the EC2 instance and ssh to it with your .pem key file

```
ssh -i [path_to_your_key_file] ubuntu@[EC2_instance_ip]
```

Install Anaconda

```
wget https://repo.continuum.io/archive/Anaconda3-4.4.0-Linux-x86_64.sh
```
```
bash ./Anaconda3-4.4.0-Linux-x86_64.sh
```

Create a conda environment for this project

```
conda create --name=seq2seq python=3.5
```

Activate this conda env

```
source activate seq2seq
```

Install tensorflow

```
conda install -c anaconda tensorflow
```

Install seq2seq

```
git clone https://github.com/google/seq2seq.git
cd seq2seq
pip install -e .
```

*NOTE* You may need to do below steps in order to get seq2seq up and running

https://github.com/google/seq2seq/issues/285

```
echo "backend : Agg" >> $HOME/.config/matplotlib/matplotlibrc
```

Verify installation

```
python -m unittest seq2seq.test.pipeline_test
```

You should see an OK message at the end
