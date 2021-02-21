# Parquet file format concepts

## Topics

<!--ts-->
   * [Introduction](#Introduction)
   * [Requirements](#Requirements)
   * [Deploy](#Deploy)
   * [Result](#Result)
   * [Reference](#Reference)
<!--te-->

## Introduction

    Parquet is an open source file format available to any project in the Hadoop ecosystem. Apache Parquet is designed for efficient as well as performant flat columnar storage format of data compared to row based files like CSV or TSV files.

    Parquet uses the record shredding and assembly algorithm which is superior to simple flattening of nested namespaces. Parquet is optimized to work with complex data in bulk and features different ways for efficient data compression and encoding types.  This approach is best especially for those queries that need to read certain columns from a large table. Parquet can only read the needed columns therefore greatly minimizing the IO.

    Some advatanges:

        1. It is designed to bring efficiency compared to row-based files like CSV. When querying, columnar storage you can skip over the non-relevant data very quickly. As a result, aggregation queries are less time consuming compared to row-oriented databases. This way of storage has translated into hardware savings and minimized latency for accessing data.
        2. Apache Parquet is built from the ground up. Hence it is able to support advanced nested data structures. The layout of Parquet data files is optimized for queries that process large volumes of data, in the gigabyte range for each individual file.
        3. Parquet is built to support flexible compression options and efficient encoding schemes. As the data type for each column is quite similar, the compression of each column is straightforward (which makes queries even faster). Data can be compressed by using one of the several codecs available; as a result, different data files can be compressed differently.
        4. Apache Parquet works best with interactive and serverless technologies like AWS Athena, Amazon Redshift Spectrum, Google BigQuery and Google Dataproc.

## Requirements

- [tree](https://vitux.com/linux-tree-command/)
    - It's a command to list directory (optional)
- [python](https://www.python.org/downloads/release/python-380/)
    - This setup was create in Python 3.8 but another version can be used
- [make](https://www.computerhope.com/unix/umake.htm)
    - You can use `make help` to see all commands availables.
- [pip](https://pypi.org/project/pip/)
    - It has been used to install all dependencies


## Deploy

It's a option if you can to execute in your computer.

1. Command to make deploy:
    
        make deploy
    
2. After that, you can access jupyter notebooks on http://localhost:8888/ and check the file (parquet_concepts.ipynb)

## Result


You can see in the following file:

```
.
├── jupyter
    └── parquet_concepts.ipynb
```

## Reference

[1][ Apache Doc ](https://arrow.apache.org/docs/python/parquet.html)

[2][ Databricks ](https://databricks.com/glossary/what-is-parquet#:~:text=Columnar%20storage%20like%20Apache%20Parquet,compared%20to%20row-oriented%20databases.)



