import sys
from pdf2docx import Converter

def convert_pdf_to_doc(pdf_file: str, doc_file: str):
    cv = Converter(pdf_file=pdf_file)    
    cv.convert(docx_filename=doc_file, start=0, end=None)
    cv.close()

if __name__ == '__main__':
    if len(sys.argv) > 2:
        pdf_file = sys.argv[1]
        doc_file = sys.argv[2]
        convert_pdf_to_doc(pdf_file, doc_file)
