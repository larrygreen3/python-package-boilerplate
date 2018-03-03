from setuptools import setup

setup(
    name="PACKAGENAME",
    version="0.0.1",
    description="",
    author="Larry Green",
    author_email="lfgreen3@gmail.com",
    url="",
    packages=[
        "PACKAGENAME"
    ],
    package_data={
        "PACKAGENAME": [
            "config.ini"
        ]
    },
    include_package_data=True,
    keywords=[
        "python"
    ],
    install_requires=[
        'pytest'
    ]
)
