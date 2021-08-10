cp corpus/deu-cat/*.txt .
VOCSIZE=50000
python3 ../sentencepiece-tokenizer.py -v $VOCSIZE -s de_m
onmt-build-vocab --from_vocab de_m.vocab --from_format sentencepiece --save_vocab src-vocab.txt.token
onmt-build-vocab --from_vocab ca_m.vocab --from_format sentencepiece --save_vocab tgt-vocab.txt.token
