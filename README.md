# Bilateral Filtering 
===================

### Applying Bilateral Filtering to images
<p align="center"> <img src="https://raw.githubusercontent.com/GKalliatakis/Bilateral-Filtering/master/bilateral_filtering.png?raw=true" /> </p>


### Overview
The bilateral filter is a nonlinear filter that does
spatial averaging without smoothing edges; it has proven to be
an effective image denoising technique amongst other various
contexts in which it has been used, such as texture editing,
relighting, tone management and optical-flow estimation. An
important issue with the application of the bilateral filter is the
selection of the filter parameters, which affect the results
significantly. In this repository, a brief synopsis on how bilateral
filtering operates is given, alongside some examples of
applications that take advantage of it, especially image
denoising. Furthermore, the implementation of this filter is
explained in details.

### Introduction
The bilateral filter is perhaps the simplest and most intuitive
one among explicit weighted-average filters. It computes the
filtering output at each pixel as the average of neighboring
pixels, weighted by the Gaussian of both spatial and
intensity distance. The bilateral filter smooths the image
while preserving edges. Therefore, the idea underlying
bilateral filtering is to do in the range of the image what
traditional filters do in its domain. Similarly to tradition
filters, range filtering is defined in order to average image
values with weights, depending on image intensity or color,
that decay with dissimilarity. Then range and domain
filtering are combined.

### Implementation
The code for the bilateral filtering was
implemented on Matlab. The filter was implemented both
for gray scale and color images.
Firstly the domain filter is computed on the input image
within the specified window. The larger the domain parameter is, the blurrier the image
will become.After that, the window size is adjusted and then the range
filter is computed.Finally the bilateral filter is computed by taking the product
of the domain and range filters before normalizing the
output.The function *bilateralGrayscale* contains the
Matlab code for this implementation.
Regarding color images, the same process was followed for
every one of the R, G and B channels. Then the channels are
combined again for the final result. One can
notice that the effectiveness of the filter in this case is not as
expected, mainly because of the different intensity profile
and contrast of each band. Furthermore this process is
computationally more expensive because the bilateral filter
is applied to every different channel.
The implementation for color images can be found in the
*bilateralRGB* with the supplementary function
*bilateral_each_channel*.

License
----

MIT

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)


   [dill]: <https://github.com/joemccann/dillinger>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [john gruber]: <http://daringfireball.net>
   [@thomasfuchs]: <http://twitter.com/thomasfuchs>
   [df1]: <http://daringfireball.net/projects/markdown/>
   [markdown-it]: <https://github.com/markdown-it/markdown-it>
   [Ace Editor]: <http://ace.ajax.org>
   [node.js]: <http://nodejs.org>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [keymaster.js]: <https://github.com/madrobby/keymaster>
   [jQuery]: <http://jquery.com>
   [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
   [express]: <http://expressjs.com>
   [AngularJS]: <http://angularjs.org>
   [Gulp]: <http://gulpjs.com>

   [PlDb]: <https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md>
   [PlGh]:  <https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md>
   [PlGd]: <https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md>
   [PlOd]: <https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md>
