# 根据CosyVoice官网上写的， 利用modelscope下载预训练模型
from modelscope import snapshot_download
snapshot_download('iic/CosyVoice2-0.5B', local_dir='pretrained_models/CosyVoice2-0.5B')