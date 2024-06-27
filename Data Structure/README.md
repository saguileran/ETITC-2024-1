# Java Notebooks

---

You can execute the notebooks from VSC using the java kernel extension for jupyter notebooks, Or, using Google Colab where you have configure the java environment. To set up java for Google Colab you must execute, before anything else, the following Python code to download [ijava](https://github.com/SpencerPark/IJava/):

```python
%%sh
# Install java kernel
wget -q https://github.com/SpencerPark/IJava/releases/download/v1.3.0/ijava-1.3.0.zip
unzip -q ijava-1.3.0.zip
python install.py

# Install proxy for the java kernel
wget -qO- https://gist.github.com/SpencerPark/e2732061ad19c1afa4a33a58cb8f18a9/archive/b6cff2bf09b6832344e576ea1e4731f0fb3df10c.tar.gz | tar xvz --strip-components=1
python install_ipc_proxy_kernel.py --kernel=java --implementation=ipc_proxy_kernel.py
```

Then, change the runtime to **connect to a hosted runtime**. After these two steps you have to be able to execute java codes.