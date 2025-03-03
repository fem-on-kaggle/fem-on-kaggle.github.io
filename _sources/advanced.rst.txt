.. _advanced:

Advanced usage
==============
.. meta::
    :description lang=en:
        Advanced usage of FEM on Kaggle packages and scripts.

GitHub workflow to facilitate notebook preparation
---------------------------------------------------
The `Open in Kaggle workflow <https://github.com/fem-on-kaggle/open-in-kaggle-workflow>`__ facilitates automatic preparation of notebooks for deployment on Kaggle, by automatically adding installation cells, replacing images contained in the local repository with their base64 representation, and scraping links to other notebooks in the same repository. Notebooks can be uploaded to Google Drive, to a GitHub repository or as artifact of a GitHub actions run. Sample usage is available `in this workflow file <https://github.com/fem-on-kaggle/open-in-kaggle-workflow/blob/main/.github/workflows/ci.yml>`__.
