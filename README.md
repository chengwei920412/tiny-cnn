# Tiny CNN: A C++11 Convolutional Neural Network Library

This is a fork of [nyanp/tiny-cnn](https://github.com/nyanp/tiny-cnn). Minor modifications are planned and [CMake](http://www.cmake.org/) is used for building.

## Index

* [Design Principles](#desing-principles)
* [Supported Networks](#supported-networks)
    * [Layer Types](#layer-types)
    * [Activation Functions](#activation-functions)
    * [Loss Functions](#loss-functions)
    * [Optimization Algorithms](#optimization-algorithms)
* [Dependencies](#dependencies)
* [Building](#building)
* [Examples](#examples)
* [Useful References](#useful-references)
* [License](#license)

## Design Principle

* Fast - without GPU
    * TBB threading and SSE/AVX vectorization
    * 98.8% accuracy on MNIST [2] in 13 minutes training (@Core i7-3520M)
* Header only, policy-based design
* Small dependency & simple implementation

## Supported Networks

### Layer Types

* Fully-connected layer
* Fully-connected layer with dropout [1]
* Convolutional layer
* Average pooling layer

    [1] G. E. Hinton, N. Srivastava, A. Krizhevsky, I. Sutskever, R. Salakhutdinov.
        Improving neural networks by preventing co-adaptation of feature detectors.
        Computing Research Repository, abs/1207.0580, 2012.

### Activation Functions

* Hyperbolic tangent
* Sigmoid
* Rectified linear
* Identity

### Loss Functions

* Cross-entropy
* Mean-squared-error

### Optimization Algorithms

* Stochastic gradient descent (with/without L2 normalization)
* Stochastic gradient Levenberg-Marquardt

## Dependencies

* [Boost](http://www.boost.org/)
* [Intel TBB](https://www.threadingbuildingblocks.org/)

## Building

This fork of Tiny CNN is built using CMake (tested on Ubuntu 14.04):

    $ sudo apt-get install build/essential
    $ sudo apt-get install cmake
    $ sudo apt-get install libboost-all-dev
    $ sudo apt-get install libtbb-dev
    $ git clone https://github.com/davidstutz/tiny-cnn
    $ cd tiny-cnn
    $ mkdir build
    $ cd build
    $ cmake ..
    $ make

Adapt `config.h` for using TBB, SSE or AV.

**Note:** Depending on your installation of Boost and TBB, you may need to adapt `cmake/FindTBB.cmake` and `CMakeLists.txt`!

## Examples

Examples can be found in `src/main.cpp`. The MNIST [2] dataset is available online at [http://yann.lecun.com/exdb/mnist/](http://yann.lecun.com/exdb/mnist/).

    [2] Y. LeCun, L. Bottou, Y. Bengio, P. Haffner.
        Gradient-based learning applied to document recognition.
        Proceedings of the IEEE, 86(11):2278-2324, November 1998.

## Useful References

Some useful references with working with (deep) convolutional neural networks. Further references can also be found on [davidstutz.de/neural-networks-reading-list](http://davidstutz.de/neural-networks-reading-list/) and [deeplearning.net]
(http://deeplearning.net/).

    [3] Y. LeCun, B. Boser, J. S. Denker, D. Henderson, R. E. Howard, W. Hubbard, L. D. Jackel.
        Backpropagation applied to handwritten zip code recognition.
        Neural Computation, 1(4):541–551, 1989.
    [4] C. Bishop.
        Pattern Recognition and Machine Learning.
        Springer Verlag, New York, 2006.
    [5] Y. Bengio.
        Learning deep architectures for AI.
        Foundations and Trends in Machine Learning, (1):1–127, 2009.
    [6] K. Jarrett, K. Kavukcuogl, M. Ranzato, Y. LeCun.
        What is the best multi-stage architecture for object recognition?
        In Computer Vision, International Conference on, pages 2146–2153, 2009.
    [7] Y. LeCun, K. Kavukvuoglu, C. Farabet.
        Convolutional networks and applications in vision.
        In Circuits and Systems, International Symposium on, pages 253–256, 2010.
    [8] A. Krizhevsky, I. Sutskever, and G. E. Hinton.
        ImageNet classification with deep convolutional neural networks.
        In Advances in Neural Information Processing Systems, pages 1097–1105, 2012

## license

The BSD 3-Clause License, see [nyanp/tiny-cnn](https://github.com/nyanp/tiny-cnn).
