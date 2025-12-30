# PDF2Doc
A very simple utility to convert pdf files to docx.

Could this be more complicated?  Absolutely.  Could it do more?  Certainly.  I need a simple tool to reliably convert pdfs to docs.  Aaaaand that's what this does.  
## Installation
* Clone the repo to a directory in your PATH (eg. ~/.local/bin)
* install a venv in the repo
  ```
  python -m venv venv
  ```
* Activate the venv and install the requirements
  ```
  . ./venv/bin/activate
  pip install -r requirements.txt
  ```
* mv the pdf2doc.sh script one directory up
  ```
  mv pdf2doc.sh ..
  ```

## Use
```
pdf2doc.sh /path/to/pdf_file.pdf /path/to/doc_to_create.docx
```
