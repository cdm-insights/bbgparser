from distutils.core import setup
setup(
  name='bbgparser',
  packages=['bbgparser'],
  version='0.1',
  license='MIT',
  description='Library to parse bbg text files generated by HAPI historical requests',
  author='Joaquin Suarez Bodean',
  author_email='jsuarezb@outlook.com',
  url='https://github.com/jsuarezb/bbgparser',
  download_url='https://github.com/jsuarezb/bbgparser/archive/v0.0.1.tar.gz',
  keywords=['BLOOMBERG', 'BBG', 'HAPI', 'REQUESTS'],
  install_requires=[
      'pyparsing',
  ],
  classifiers=[
    'Development Status :: 3 - Alpha',
    'Intended Audience :: Developers',
    'Topic :: Software Development :: Build Tools',
    'License :: OSI Approved :: MIT License',
    'Programming Language :: Python :: 3.5',
    'Programming Language :: Python :: 3.6',
  ],
)
