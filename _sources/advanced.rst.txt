.. _advanced:

Advanced usage
==============
.. meta::
    :description lang=en:
        Advanced usage of FEM on Kaggle packages and scripts.

Specific versions of end user packages
--------------------------------------

End user packages [#f1]_ are automatically built on a weekly basis, in order to follow upstream development.

Users that do not wish to be up to date with the upstream development cycle are invited to hardcode in their Kaggle notebooks a fixed release by replacing

.. raw:: html

    <div class="package-installation" style="margin-top: 0; margin-bottom: 0; margin-left: 1rem;">https://fem-on-kaggle.github.io/releases/{install-script}</div>

in the instructions above with

.. raw:: html

    <div class="package-installation" style="margin-top: 0; margin-bottom: 0; margin-left: 1rem;">https://github.com/fem-on-kaggle/fem-on-kaggle.github.io/raw/{commit}/releases/{install-script}</div>

where ``{install-script}`` is the installation script of the desired package, and ``{commit}`` is the SHA of a commit `in this list  <https://github.com/fem-on-kaggle/fem-on-kaggle.github.io/commits/gh-pages>`__ at which the desired version was available. Those users may also want to `pin their Kaggle docker container to a specific image <https://www.kaggle.com/docs/notebooks#dockerfiles-and-notebooks-versions>`__, rather than the default option of running on the latest container.

.. rubric:: Notes

.. [#f1] The FEniCS package is not automatically built, due to the upstream development having moved to FEniCSx.

GitHub workflow to facilitate notebook preparation
---------------------------------------------------
The `Open in Kaggle workflow <https://github.com/fem-on-kaggle/open-in-kaggle-workflow>`__ facilitates automatic preparation of notebooks for deployment on Kaggle, by automatically adding installation cells, replacing images contained in the local repository with their base64 representation, and scraping links to other notebooks in the same repository. Notebooks can be uploaded to Google Drive, to a GitHub repository or as artifact of a GitHub actions run. Sample usage is available `in this workflow file <https://github.com/fem-on-kaggle/open-in-kaggle-workflow/blob/main/.github/workflows/ci.yml>`__.
