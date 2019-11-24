# ImageMagic-图像拼接

## 1. 编号数目和起始编号推算
在整合图像中对横纵方向上的格子计数，算出总格子数，00开始计算（数字至少写作两位，一位数字前面补0）。
最大的数字减1，是图像左上角的格子编号。

## 2. 用Excel填充柄逐行填写数字
最大数字填在A1单元格，按照相机扫描规律填充所有单元格。
将个位数字切换为文本模式，并在前面补0。

## 3. 使用Excel公式将数字编号转换为带通配符的文件名
使用如`=CONCATENATE("*f",A1,"d0.TIF")`这样的公式，为编号添加前后的文字，组成文件名，并拖拽应用到所有文件名。
在最左侧添加一组相同的命令`convert +append`用于调用imagemagick进行图像拼接。
在最右侧添加一组递增的文件名，作为每行代码输出的对应行的图像。

## 4. 整合所有行的图像
使用`convert -append`命令将所有行的图像整合为一整张图。

## 5. 代码执行
a.将代码粘贴到VScode，存为sh脚本，或添加shebang行指定sh解释器，按右上角的Run按钮执行。
b.将代码粘贴到文本编辑器，存为sh脚本，在终端以sh解释器调用脚本。

## 6. ImageMagick用法

`convert +append 输入图像队列 输出图像` 用作横向拼接。

`convert -append 输入图像队列 输出图像` 用作纵向拼接。

目前已知可接受jpg, png, tif等格式。

## 7. Excel中文件序列转换示例
```
转换前“239”，位于“B1”单元格
CONCATENATE("*f",B1,"d0.TIF")
转换后“*f239d0.TIF”
```
## 8. 整合240个小图为一个大图，小图以螺旋状收敛，默认图片之间无重叠
``` sh
mkdir results
convert +append	*f239d0.TIF	*f238d0.TIF	*f237d0.TIF	*f236d0.TIF	*f235d0.TIF	*f234d0.TIF	*f233d0.TIF	*f232d0.TIF	*f231d0.TIF	*f230d0.TIF	*f229d0.TIF	*f228d0.TIF	*f227d0.TIF	*f226d0.TIF	*f225d0.TIF	*f224d0.TIF	*f223d0.TIF	*f222d0.TIF	*f221d0.TIF	*f220d0.TIF	./results/1hang.TIF
convert +append	*f180d0.TIF	*f179d0.TIF	*f178d0.TIF	*f177d0.TIF	*f176d0.TIF	*f175d0.TIF	*f174d0.TIF	*f173d0.TIF	*f172d0.TIF	*f171d0.TIF	*f170d0.TIF	*f169d0.TIF	*f168d0.TIF	*f167d0.TIF	*f166d0.TIF	*f165d0.TIF	*f164d0.TIF	*f163d0.TIF	*f162d0.TIF	*f219d0.TIF	./results/2hang.TIF
convert +append	*f181d0.TIF	*f128d0.TIF	*f127d0.TIF	*f126d0.TIF	*f125d0.TIF	*f124d0.TIF	*f123d0.TIF	*f122d0.TIF	*f121d0.TIF	*f120d0.TIF	*f119d0.TIF	*f118d0.TIF	*f117d0.TIF	*f116d0.TIF	*f115d0.TIF	*f114d0.TIF	*f113d0.TIF	*f112d0.TIF	*f161d0.TIF	*f218d0.TIF	./results/3hang.TIF
convert +append	*f182d0.TIF	*f129d0.TIF	*f84d0.TIF	*f83d0.TIF	*f82d0.TIF	*f81d0.TIF	*f80d0.TIF	*f79d0.TIF	*f78d0.TIF	*f77d0.TIF	*f76d0.TIF	*f75d0.TIF	*f74d0.TIF	*f73d0.TIF	*f72d0.TIF	*f71d0.TIF	*f70d0.TIF	*f111d0.TIF	*f160d0.TIF	*f217d0.TIF	./results/4hang.TIF
convert +append	*f183d0.TIF	*f130d0.TIF	*f85d0.TIF	*f48d0.TIF	*f47d0.TIF	*f46d0.TIF	*f45d0.TIF	*f44d0.TIF	*f43d0.TIF	*f42d0.TIF	*f41d0.TIF	*f40d0.TIF	*f39d0.TIF	*f38d0.TIF	*f37d0.TIF	*f36d0.TIF	*f69d0.TIF	*f110d0.TIF	*f159d0.TIF	*f216d0.TIF	./results/5hang.TIF
convert +append	*f184d0.TIF	*f131d0.TIF	*f86d0.TIF	*f49d0.TIF	*f20d0.TIF	*f19d0.TIF	*f18d0.TIF	*f17d0.TIF	*f16d0.TIF	*f15d0.TIF	*f14d0.TIF	*f13d0.TIF	*f12d0.TIF	*f11d0.TIF	*f10d0.TIF	*f35d0.TIF	*f68d0.TIF	*f109d0.TIF	*f158d0.TIF	*f215d0.TIF	./results/6hang.TIF
convert +append	*f185d0.TIF	*f132d0.TIF	*f87d0.TIF	*f50d0.TIF	*f21d0.TIF	*f00d0.TIF	*f01d0.TIF	*f02d0.TIF	*f03d0.TIF	*f04d0.TIF	*f05d0.TIF	*f06d0.TIF	*f07d0.TIF	*f08d0.TIF	*f09d0.TIF	*f34d0.TIF	*f67d0.TIF	*f108d0.TIF	*f157d0.TIF	*f214d0.TIF	./results/7hang.TIF
convert +append	*f186d0.TIF	*f133d0.TIF	*f88d0.TIF	*f51d0.TIF	*f22d0.TIF	*f23d0.TIF	*f24d0.TIF	*f25d0.TIF	*f26d0.TIF	*f27d0.TIF	*f28d0.TIF	*f29d0.TIF	*f30d0.TIF	*f31d0.TIF	*f32d0.TIF	*f33d0.TIF	*f66d0.TIF	*f107d0.TIF	*f156d0.TIF	*f213d0.TIF	./results/8hang.TIF
convert +append	*f187d0.TIF	*f134d0.TIF	*f89d0.TIF	*f52d0.TIF	*f53d0.TIF	*f54d0.TIF	*f55d0.TIF	*f56d0.TIF	*f57d0.TIF	*f58d0.TIF	*f59d0.TIF	*f60d0.TIF	*f61d0.TIF	*f62d0.TIF	*f63d0.TIF	*f64d0.TIF	*f65d0.TIF	*f106d0.TIF	*f155d0.TIF	*f212d0.TIF	./results/9hang.TIF
convert +append	*f188d0.TIF	*f135d0.TIF	*f90d0.TIF	*f91d0.TIF	*f92d0.TIF	*f93d0.TIF	*f94d0.TIF	*f95d0.TIF	*f96d0.TIF	*f97d0.TIF	*f98d0.TIF	*f99d0.TIF	*f100d0.TIF	*f101d0.TIF	*f102d0.TIF	*f103d0.TIF	*f104d0.TIF	*f105d0.TIF	*f154d0.TIF	*f211d0.TIF	./results/10hang.TIF
convert +append	*f189d0.TIF	*f136d0.TIF	*f137d0.TIF	*f138d0.TIF	*f139d0.TIF	*f140d0.TIF	*f141d0.TIF	*f142d0.TIF	*f143d0.TIF	*f144d0.TIF	*f145d0.TIF	*f146d0.TIF	*f147d0.TIF	*f148d0.TIF	*f149d0.TIF	*f150d0.TIF	*f151d0.TIF	*f152d0.TIF	*f153d0.TIF	*f210d0.TIF	./results/11hang.TIF
convert +append	*f190d0.TIF	*f191d0.TIF	*f192d0.TIF	*f193d0.TIF	*f194d0.TIF	*f195d0.TIF	*f196d0.TIF	*f197d0.TIF	*f198d0.TIF	*f199d0.TIF	*f200d0.TIF	*f201d0.TIF	*f202d0.TIF	*f203d0.TIF	*f204d0.TIF	*f205d0.TIF	*f206d0.TIF	*f207d0.TIF	*f208d0.TIF	*f209d0.TIF	./results/12hang.TIF
cd results																			
convert -append	1hang.TIF	2hang.TIF	3hang.TIF	4hang.TIF	5hang.TIF	6hang.TIF	7hang.TIF	8hang.TIF	9hang.TIF	10hang.TIF	11hang.TIF	12hang.TIF	000hecheng.TIF								
rm ./*hang.TIF
```
