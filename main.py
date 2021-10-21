from src.app import app
import toml
import os

if __name__ == '__main__':
    conf = toml.load(os.path.join(os.getcwd(), 'config', 'config.toml', ))
    app_conf = conf.get("application")
    app.run(port=app_conf.get("port"), host=app_conf.get("host"), debug=False)
