#!/bin/bash
#
pdf_file="unset"
doc_file="unset"
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

. $SCRIPT_DIR/pdf2doc/venv/bin/activate

[[ ! -z $1 ]] && pdf_file=$1
[[ ! -z $2 ]] && doc_file=$2

if [[ $pdf_file == 'unset' ]] && [[ $doc_file == 'unset' ]]
then
  echo "Usage: pdf2doc.sh <pdf_file> <doc_file>"
  exit 1
fi

if [[ $doc_file == 'unset' ]]
then
  echo "Usage: pdf2doc.sh <pdf_file> <doc_file>"
  exit 1
fi
python $SCRIPT_DIR/pdf2doc/main.py $pdf_file $doc_file
