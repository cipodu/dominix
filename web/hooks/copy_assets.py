import shutil
from pathlib import Path


def on_post_build(config, **kwargs):
    src_dir = Path(config["config_file_path"]).parent
    site_dir = Path(config["site_dir"])

    for rel in ["js/mathjax/es5", "js/katex/dist"]:
        src = src_dir / rel
        dst = site_dir / rel
        if dst.exists():
            shutil.rmtree(dst)
        if src.exists():
            shutil.copytree(src, dst)

    return config
