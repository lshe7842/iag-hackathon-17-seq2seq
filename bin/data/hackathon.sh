#! /usr/bin/env bash

set -e

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../.." && pwd )"

OUTPUT_DIR="./hackathon_data"

OUTPUT_DIR_TRAIN="${OUTPUT_DIR}/train"
OUTPUT_DIR_DEV="${OUTPUT_DIR}/dev"
OUTPUT_DIR_TEST="${OUTPUT_DIR}/test"

# Write train, dev and test data
# ${BASE_DIR}/bin/tools/generate_toy_data.py  \
#   --type ${DATA_TYPE} \
#   --num_examples 10000 \
#   --vocab_size 20 \
#   --max_len 20 \
#   --output_dir ${OUTPUT_DIR_TRAIN}
#
# ${BASE_DIR}/bin/tools/generate_toy_data.py  \
#   --type ${DATA_TYPE} \
#   --num_examples 1000 \
#   --vocab_size 20 \
#   --max_len 20 \
#   --output_dir ${OUTPUT_DIR_DEV}
#
# ${BASE_DIR}/bin/tools/generate_toy_data.py  \
#   --type ${DATA_TYPE} \
#   --num_examples 1000 \
#   --vocab_size 20 \
#   --max_len 20 \
#   --output_dir ${OUTPUT_DIR_TEST}

# Create Vocabulary
${BASE_DIR}/bin/tools/generate_vocab.py \
  < ${OUTPUT_DIR_TRAIN}/sources.txt \
  > ${OUTPUT_DIR_TRAIN}/vocab.sources.txt
echo "Wrote ${OUTPUT_DIR_TRAIN}/vocab.sources.txt"

${BASE_DIR}/bin/tools/generate_vocab.py \
  < ${OUTPUT_DIR_TRAIN}/targets.txt \
  > ${OUTPUT_DIR_TRAIN}/vocab.targets.txt
echo "Wrote ${OUTPUT_DIR_TRAIN}/vocab.targets.txt"
