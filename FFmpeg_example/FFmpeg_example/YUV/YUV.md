
## YUV（YUV444, YUV422, YUV420, YV12, NV12, NV21）

> “Y”表示明亮度（Luminance或Luma），也就是灰度值；而“U”和“V” 表示的则是色度（Chrominance或Chroma），作用是描述影像色彩及饱和度，用于指定像素的颜色。

YUV 格式有两大类: 
* planar
* packed

> 对于planar的YUV格式，先连续存储所有像素点的Y，紧接着存储所有像素点的U，随后是所有像素点的V。
对于packed的YUV格式，每个像素点的Y,U,V是连续交*存储的。


YUV采样方式：
* YUV 4:4:4采样，每一个Y对应一组UV分量。
* YUV 4:2:2采样，每两个Y共用一组UV分量。 
* YUV 4:2:0采样，每四个Y共用一组UV分量。

YUV存储方式:








