       �K"	  @J���Abrain.Event:2���u     ۇt�	g/jJ���A"��	
�
input_1Placeholder*
dtype0*6
shape-:+���������������������������*A
_output_shapes/
-:+���������������������������
z
!block1_conv1/random_uniform/shapeConst*%
valueB"         @   *
dtype0*
_output_shapes
:
d
block1_conv1/random_uniform/minConst*
valueB
 *8J̽*
dtype0*
_output_shapes
: 
d
block1_conv1/random_uniform/maxConst*
valueB
 *8J�=*
dtype0*
_output_shapes
: 
�
)block1_conv1/random_uniform/RandomUniformRandomUniform!block1_conv1/random_uniform/shape*&
_output_shapes
:@*
T0*
dtype0*
seed���)*
seed2���
�
block1_conv1/random_uniform/subSubblock1_conv1/random_uniform/maxblock1_conv1/random_uniform/min*
T0*
_output_shapes
: 
�
block1_conv1/random_uniform/mulMul)block1_conv1/random_uniform/RandomUniformblock1_conv1/random_uniform/sub*
T0*&
_output_shapes
:@
�
block1_conv1/random_uniformAddblock1_conv1/random_uniform/mulblock1_conv1/random_uniform/min*
T0*&
_output_shapes
:@
�
block1_conv1/kernel
VariableV2*
shape:@*
dtype0*&
_output_shapes
:@*
	container *
shared_name 
�
block1_conv1/kernel/AssignAssignblock1_conv1/kernelblock1_conv1/random_uniform*&
_output_shapes
:@*&
_class
loc:@block1_conv1/kernel*
use_locking(*
validate_shape(*
T0
�
block1_conv1/kernel/readIdentityblock1_conv1/kernel*&
_class
loc:@block1_conv1/kernel*
T0*&
_output_shapes
:@
_
block1_conv1/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
}
block1_conv1/bias
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
	container *
shared_name 
�
block1_conv1/bias/AssignAssignblock1_conv1/biasblock1_conv1/Const*
_output_shapes
:@*$
_class
loc:@block1_conv1/bias*
use_locking(*
validate_shape(*
T0
�
block1_conv1/bias/readIdentityblock1_conv1/bias*$
_class
loc:@block1_conv1/bias*
T0*
_output_shapes
:@
w
&block1_conv1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block1_conv1/convolutionConv2Dinput_1block1_conv1/kernel/read*
strides
*A
_output_shapes/
-:+���������������������������@*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
block1_conv1/BiasAddBiasAddblock1_conv1/convolutionblock1_conv1/bias/read*A
_output_shapes/
-:+���������������������������@*
T0*
data_formatNHWC
{
block1_conv1/ReluRelublock1_conv1/BiasAdd*
T0*A
_output_shapes/
-:+���������������������������@
z
!block1_conv2/random_uniform/shapeConst*%
valueB"      @   @   *
dtype0*
_output_shapes
:
d
block1_conv2/random_uniform/minConst*
valueB
 *:͓�*
dtype0*
_output_shapes
: 
d
block1_conv2/random_uniform/maxConst*
valueB
 *:͓=*
dtype0*
_output_shapes
: 
�
)block1_conv2/random_uniform/RandomUniformRandomUniform!block1_conv2/random_uniform/shape*&
_output_shapes
:@@*
T0*
dtype0*
seed���)*
seed2���
�
block1_conv2/random_uniform/subSubblock1_conv2/random_uniform/maxblock1_conv2/random_uniform/min*
T0*
_output_shapes
: 
�
block1_conv2/random_uniform/mulMul)block1_conv2/random_uniform/RandomUniformblock1_conv2/random_uniform/sub*
T0*&
_output_shapes
:@@
�
block1_conv2/random_uniformAddblock1_conv2/random_uniform/mulblock1_conv2/random_uniform/min*
T0*&
_output_shapes
:@@
�
block1_conv2/kernel
VariableV2*
shape:@@*
dtype0*&
_output_shapes
:@@*
	container *
shared_name 
�
block1_conv2/kernel/AssignAssignblock1_conv2/kernelblock1_conv2/random_uniform*&
_output_shapes
:@@*&
_class
loc:@block1_conv2/kernel*
use_locking(*
validate_shape(*
T0
�
block1_conv2/kernel/readIdentityblock1_conv2/kernel*&
_class
loc:@block1_conv2/kernel*
T0*&
_output_shapes
:@@
_
block1_conv2/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
}
block1_conv2/bias
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
	container *
shared_name 
�
block1_conv2/bias/AssignAssignblock1_conv2/biasblock1_conv2/Const*
_output_shapes
:@*$
_class
loc:@block1_conv2/bias*
use_locking(*
validate_shape(*
T0
�
block1_conv2/bias/readIdentityblock1_conv2/bias*$
_class
loc:@block1_conv2/bias*
T0*
_output_shapes
:@
w
&block1_conv2/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block1_conv2/convolutionConv2Dblock1_conv1/Relublock1_conv2/kernel/read*
strides
*A
_output_shapes/
-:+���������������������������@*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
block1_conv2/BiasAddBiasAddblock1_conv2/convolutionblock1_conv2/bias/read*A
_output_shapes/
-:+���������������������������@*
T0*
data_formatNHWC
{
block1_conv2/ReluRelublock1_conv2/BiasAdd*
T0*A
_output_shapes/
-:+���������������������������@
�
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu*
ksize
*
strides
*A
_output_shapes/
-:+���������������������������@*
paddingVALID*
T0*
data_formatNHWC
z
!block2_conv1/random_uniform/shapeConst*%
valueB"      @   �   *
dtype0*
_output_shapes
:
d
block2_conv1/random_uniform/minConst*
valueB
 *�[q�*
dtype0*
_output_shapes
: 
d
block2_conv1/random_uniform/maxConst*
valueB
 *�[q=*
dtype0*
_output_shapes
: 
�
)block2_conv1/random_uniform/RandomUniformRandomUniform!block2_conv1/random_uniform/shape*'
_output_shapes
:@�*
T0*
dtype0*
seed���)*
seed2��

�
block2_conv1/random_uniform/subSubblock2_conv1/random_uniform/maxblock2_conv1/random_uniform/min*
T0*
_output_shapes
: 
�
block2_conv1/random_uniform/mulMul)block2_conv1/random_uniform/RandomUniformblock2_conv1/random_uniform/sub*
T0*'
_output_shapes
:@�
�
block2_conv1/random_uniformAddblock2_conv1/random_uniform/mulblock2_conv1/random_uniform/min*
T0*'
_output_shapes
:@�
�
block2_conv1/kernel
VariableV2*
shape:@�*
dtype0*'
_output_shapes
:@�*
	container *
shared_name 
�
block2_conv1/kernel/AssignAssignblock2_conv1/kernelblock2_conv1/random_uniform*'
_output_shapes
:@�*&
_class
loc:@block2_conv1/kernel*
use_locking(*
validate_shape(*
T0
�
block2_conv1/kernel/readIdentityblock2_conv1/kernel*&
_class
loc:@block2_conv1/kernel*
T0*'
_output_shapes
:@�
a
block2_conv1/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block2_conv1/bias
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
block2_conv1/bias/AssignAssignblock2_conv1/biasblock2_conv1/Const*
_output_shapes	
:�*$
_class
loc:@block2_conv1/bias*
use_locking(*
validate_shape(*
T0
�
block2_conv1/bias/readIdentityblock2_conv1/bias*$
_class
loc:@block2_conv1/bias*
T0*
_output_shapes	
:�
w
&block2_conv1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block2_conv1/convolutionConv2Dblock1_pool/MaxPoolblock2_conv1/kernel/read*
strides
*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
block2_conv1/BiasAddBiasAddblock2_conv1/convolutionblock2_conv1/bias/read*B
_output_shapes0
.:,����������������������������*
T0*
data_formatNHWC
|
block2_conv1/ReluRelublock2_conv1/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
z
!block2_conv2/random_uniform/shapeConst*%
valueB"      �   �   *
dtype0*
_output_shapes
:
d
block2_conv2/random_uniform/minConst*
valueB
 *�Q�*
dtype0*
_output_shapes
: 
d
block2_conv2/random_uniform/maxConst*
valueB
 *�Q=*
dtype0*
_output_shapes
: 
�
)block2_conv2/random_uniform/RandomUniformRandomUniform!block2_conv2/random_uniform/shape*(
_output_shapes
:��*
T0*
dtype0*
seed���)*
seed2�Ë
�
block2_conv2/random_uniform/subSubblock2_conv2/random_uniform/maxblock2_conv2/random_uniform/min*
T0*
_output_shapes
: 
�
block2_conv2/random_uniform/mulMul)block2_conv2/random_uniform/RandomUniformblock2_conv2/random_uniform/sub*
T0*(
_output_shapes
:��
�
block2_conv2/random_uniformAddblock2_conv2/random_uniform/mulblock2_conv2/random_uniform/min*
T0*(
_output_shapes
:��
�
block2_conv2/kernel
VariableV2*
shape:��*
dtype0*(
_output_shapes
:��*
	container *
shared_name 
�
block2_conv2/kernel/AssignAssignblock2_conv2/kernelblock2_conv2/random_uniform*(
_output_shapes
:��*&
_class
loc:@block2_conv2/kernel*
use_locking(*
validate_shape(*
T0
�
block2_conv2/kernel/readIdentityblock2_conv2/kernel*&
_class
loc:@block2_conv2/kernel*
T0*(
_output_shapes
:��
a
block2_conv2/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block2_conv2/bias
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
block2_conv2/bias/AssignAssignblock2_conv2/biasblock2_conv2/Const*
_output_shapes	
:�*$
_class
loc:@block2_conv2/bias*
use_locking(*
validate_shape(*
T0
�
block2_conv2/bias/readIdentityblock2_conv2/bias*$
_class
loc:@block2_conv2/bias*
T0*
_output_shapes	
:�
w
&block2_conv2/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block2_conv2/convolutionConv2Dblock2_conv1/Relublock2_conv2/kernel/read*
strides
*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
block2_conv2/BiasAddBiasAddblock2_conv2/convolutionblock2_conv2/bias/read*B
_output_shapes0
.:,����������������������������*
T0*
data_formatNHWC
|
block2_conv2/ReluRelublock2_conv2/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
�
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu*
ksize
*
strides
*B
_output_shapes0
.:,����������������������������*
paddingVALID*
T0*
data_formatNHWC
z
!block3_conv1/random_uniform/shapeConst*%
valueB"      �      *
dtype0*
_output_shapes
:
d
block3_conv1/random_uniform/minConst*
valueB
 *��*�*
dtype0*
_output_shapes
: 
d
block3_conv1/random_uniform/maxConst*
valueB
 *��*=*
dtype0*
_output_shapes
: 
�
)block3_conv1/random_uniform/RandomUniformRandomUniform!block3_conv1/random_uniform/shape*(
_output_shapes
:��*
T0*
dtype0*
seed���)*
seed2ĩ�
�
block3_conv1/random_uniform/subSubblock3_conv1/random_uniform/maxblock3_conv1/random_uniform/min*
T0*
_output_shapes
: 
�
block3_conv1/random_uniform/mulMul)block3_conv1/random_uniform/RandomUniformblock3_conv1/random_uniform/sub*
T0*(
_output_shapes
:��
�
block3_conv1/random_uniformAddblock3_conv1/random_uniform/mulblock3_conv1/random_uniform/min*
T0*(
_output_shapes
:��
�
block3_conv1/kernel
VariableV2*
shape:��*
dtype0*(
_output_shapes
:��*
	container *
shared_name 
�
block3_conv1/kernel/AssignAssignblock3_conv1/kernelblock3_conv1/random_uniform*(
_output_shapes
:��*&
_class
loc:@block3_conv1/kernel*
use_locking(*
validate_shape(*
T0
�
block3_conv1/kernel/readIdentityblock3_conv1/kernel*&
_class
loc:@block3_conv1/kernel*
T0*(
_output_shapes
:��
a
block3_conv1/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block3_conv1/bias
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
block3_conv1/bias/AssignAssignblock3_conv1/biasblock3_conv1/Const*
_output_shapes	
:�*$
_class
loc:@block3_conv1/bias*
use_locking(*
validate_shape(*
T0
�
block3_conv1/bias/readIdentityblock3_conv1/bias*$
_class
loc:@block3_conv1/bias*
T0*
_output_shapes	
:�
w
&block3_conv1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block3_conv1/convolutionConv2Dblock2_pool/MaxPoolblock3_conv1/kernel/read*
strides
*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
block3_conv1/BiasAddBiasAddblock3_conv1/convolutionblock3_conv1/bias/read*B
_output_shapes0
.:,����������������������������*
T0*
data_formatNHWC
|
block3_conv1/ReluRelublock3_conv1/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
z
!block3_conv2/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
d
block3_conv2/random_uniform/minConst*
valueB
 *:��*
dtype0*
_output_shapes
: 
d
block3_conv2/random_uniform/maxConst*
valueB
 *:�=*
dtype0*
_output_shapes
: 
�
)block3_conv2/random_uniform/RandomUniformRandomUniform!block3_conv2/random_uniform/shape*(
_output_shapes
:��*
T0*
dtype0*
seed���)*
seed2�?
�
block3_conv2/random_uniform/subSubblock3_conv2/random_uniform/maxblock3_conv2/random_uniform/min*
T0*
_output_shapes
: 
�
block3_conv2/random_uniform/mulMul)block3_conv2/random_uniform/RandomUniformblock3_conv2/random_uniform/sub*
T0*(
_output_shapes
:��
�
block3_conv2/random_uniformAddblock3_conv2/random_uniform/mulblock3_conv2/random_uniform/min*
T0*(
_output_shapes
:��
�
block3_conv2/kernel
VariableV2*
shape:��*
dtype0*(
_output_shapes
:��*
	container *
shared_name 
�
block3_conv2/kernel/AssignAssignblock3_conv2/kernelblock3_conv2/random_uniform*(
_output_shapes
:��*&
_class
loc:@block3_conv2/kernel*
use_locking(*
validate_shape(*
T0
�
block3_conv2/kernel/readIdentityblock3_conv2/kernel*&
_class
loc:@block3_conv2/kernel*
T0*(
_output_shapes
:��
a
block3_conv2/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block3_conv2/bias
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
block3_conv2/bias/AssignAssignblock3_conv2/biasblock3_conv2/Const*
_output_shapes	
:�*$
_class
loc:@block3_conv2/bias*
use_locking(*
validate_shape(*
T0
�
block3_conv2/bias/readIdentityblock3_conv2/bias*$
_class
loc:@block3_conv2/bias*
T0*
_output_shapes	
:�
w
&block3_conv2/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block3_conv2/convolutionConv2Dblock3_conv1/Relublock3_conv2/kernel/read*
strides
*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
block3_conv2/BiasAddBiasAddblock3_conv2/convolutionblock3_conv2/bias/read*B
_output_shapes0
.:,����������������������������*
T0*
data_formatNHWC
|
block3_conv2/ReluRelublock3_conv2/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
z
!block3_conv3/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
d
block3_conv3/random_uniform/minConst*
valueB
 *:��*
dtype0*
_output_shapes
: 
d
block3_conv3/random_uniform/maxConst*
valueB
 *:�=*
dtype0*
_output_shapes
: 
�
)block3_conv3/random_uniform/RandomUniformRandomUniform!block3_conv3/random_uniform/shape*(
_output_shapes
:��*
T0*
dtype0*
seed���)*
seed2���
�
block3_conv3/random_uniform/subSubblock3_conv3/random_uniform/maxblock3_conv3/random_uniform/min*
T0*
_output_shapes
: 
�
block3_conv3/random_uniform/mulMul)block3_conv3/random_uniform/RandomUniformblock3_conv3/random_uniform/sub*
T0*(
_output_shapes
:��
�
block3_conv3/random_uniformAddblock3_conv3/random_uniform/mulblock3_conv3/random_uniform/min*
T0*(
_output_shapes
:��
�
block3_conv3/kernel
VariableV2*
shape:��*
dtype0*(
_output_shapes
:��*
	container *
shared_name 
�
block3_conv3/kernel/AssignAssignblock3_conv3/kernelblock3_conv3/random_uniform*(
_output_shapes
:��*&
_class
loc:@block3_conv3/kernel*
use_locking(*
validate_shape(*
T0
�
block3_conv3/kernel/readIdentityblock3_conv3/kernel*&
_class
loc:@block3_conv3/kernel*
T0*(
_output_shapes
:��
a
block3_conv3/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block3_conv3/bias
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
block3_conv3/bias/AssignAssignblock3_conv3/biasblock3_conv3/Const*
_output_shapes	
:�*$
_class
loc:@block3_conv3/bias*
use_locking(*
validate_shape(*
T0
�
block3_conv3/bias/readIdentityblock3_conv3/bias*$
_class
loc:@block3_conv3/bias*
T0*
_output_shapes	
:�
w
&block3_conv3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block3_conv3/convolutionConv2Dblock3_conv2/Relublock3_conv3/kernel/read*
strides
*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
block3_conv3/BiasAddBiasAddblock3_conv3/convolutionblock3_conv3/bias/read*B
_output_shapes0
.:,����������������������������*
T0*
data_formatNHWC
|
block3_conv3/ReluRelublock3_conv3/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
�
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu*
ksize
*
strides
*B
_output_shapes0
.:,����������������������������*
paddingVALID*
T0*
data_formatNHWC
z
!block4_conv1/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
d
block4_conv1/random_uniform/minConst*
valueB
 *�[�*
dtype0*
_output_shapes
: 
d
block4_conv1/random_uniform/maxConst*
valueB
 *�[�<*
dtype0*
_output_shapes
: 
�
)block4_conv1/random_uniform/RandomUniformRandomUniform!block4_conv1/random_uniform/shape*(
_output_shapes
:��*
T0*
dtype0*
seed���)*
seed2���
�
block4_conv1/random_uniform/subSubblock4_conv1/random_uniform/maxblock4_conv1/random_uniform/min*
T0*
_output_shapes
: 
�
block4_conv1/random_uniform/mulMul)block4_conv1/random_uniform/RandomUniformblock4_conv1/random_uniform/sub*
T0*(
_output_shapes
:��
�
block4_conv1/random_uniformAddblock4_conv1/random_uniform/mulblock4_conv1/random_uniform/min*
T0*(
_output_shapes
:��
�
block4_conv1/kernel
VariableV2*
shape:��*
dtype0*(
_output_shapes
:��*
	container *
shared_name 
�
block4_conv1/kernel/AssignAssignblock4_conv1/kernelblock4_conv1/random_uniform*(
_output_shapes
:��*&
_class
loc:@block4_conv1/kernel*
use_locking(*
validate_shape(*
T0
�
block4_conv1/kernel/readIdentityblock4_conv1/kernel*&
_class
loc:@block4_conv1/kernel*
T0*(
_output_shapes
:��
a
block4_conv1/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block4_conv1/bias
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
block4_conv1/bias/AssignAssignblock4_conv1/biasblock4_conv1/Const*
_output_shapes	
:�*$
_class
loc:@block4_conv1/bias*
use_locking(*
validate_shape(*
T0
�
block4_conv1/bias/readIdentityblock4_conv1/bias*$
_class
loc:@block4_conv1/bias*
T0*
_output_shapes	
:�
w
&block4_conv1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block4_conv1/convolutionConv2Dblock3_pool/MaxPoolblock4_conv1/kernel/read*
strides
*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
block4_conv1/BiasAddBiasAddblock4_conv1/convolutionblock4_conv1/bias/read*B
_output_shapes0
.:,����������������������������*
T0*
data_formatNHWC
|
block4_conv1/ReluRelublock4_conv1/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
z
!block4_conv2/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
d
block4_conv2/random_uniform/minConst*
valueB
 *�Ѽ*
dtype0*
_output_shapes
: 
d
block4_conv2/random_uniform/maxConst*
valueB
 *��<*
dtype0*
_output_shapes
: 
�
)block4_conv2/random_uniform/RandomUniformRandomUniform!block4_conv2/random_uniform/shape*(
_output_shapes
:��*
T0*
dtype0*
seed���)*
seed2��
�
block4_conv2/random_uniform/subSubblock4_conv2/random_uniform/maxblock4_conv2/random_uniform/min*
T0*
_output_shapes
: 
�
block4_conv2/random_uniform/mulMul)block4_conv2/random_uniform/RandomUniformblock4_conv2/random_uniform/sub*
T0*(
_output_shapes
:��
�
block4_conv2/random_uniformAddblock4_conv2/random_uniform/mulblock4_conv2/random_uniform/min*
T0*(
_output_shapes
:��
�
block4_conv2/kernel
VariableV2*
shape:��*
dtype0*(
_output_shapes
:��*
	container *
shared_name 
�
block4_conv2/kernel/AssignAssignblock4_conv2/kernelblock4_conv2/random_uniform*(
_output_shapes
:��*&
_class
loc:@block4_conv2/kernel*
use_locking(*
validate_shape(*
T0
�
block4_conv2/kernel/readIdentityblock4_conv2/kernel*&
_class
loc:@block4_conv2/kernel*
T0*(
_output_shapes
:��
a
block4_conv2/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block4_conv2/bias
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
block4_conv2/bias/AssignAssignblock4_conv2/biasblock4_conv2/Const*
_output_shapes	
:�*$
_class
loc:@block4_conv2/bias*
use_locking(*
validate_shape(*
T0
�
block4_conv2/bias/readIdentityblock4_conv2/bias*$
_class
loc:@block4_conv2/bias*
T0*
_output_shapes	
:�
w
&block4_conv2/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block4_conv2/convolutionConv2Dblock4_conv1/Relublock4_conv2/kernel/read*
strides
*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
block4_conv2/BiasAddBiasAddblock4_conv2/convolutionblock4_conv2/bias/read*B
_output_shapes0
.:,����������������������������*
T0*
data_formatNHWC
|
block4_conv2/ReluRelublock4_conv2/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
z
!block4_conv3/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
d
block4_conv3/random_uniform/minConst*
valueB
 *�Ѽ*
dtype0*
_output_shapes
: 
d
block4_conv3/random_uniform/maxConst*
valueB
 *��<*
dtype0*
_output_shapes
: 
�
)block4_conv3/random_uniform/RandomUniformRandomUniform!block4_conv3/random_uniform/shape*(
_output_shapes
:��*
T0*
dtype0*
seed���)*
seed2��
�
block4_conv3/random_uniform/subSubblock4_conv3/random_uniform/maxblock4_conv3/random_uniform/min*
T0*
_output_shapes
: 
�
block4_conv3/random_uniform/mulMul)block4_conv3/random_uniform/RandomUniformblock4_conv3/random_uniform/sub*
T0*(
_output_shapes
:��
�
block4_conv3/random_uniformAddblock4_conv3/random_uniform/mulblock4_conv3/random_uniform/min*
T0*(
_output_shapes
:��
�
block4_conv3/kernel
VariableV2*
shape:��*
dtype0*(
_output_shapes
:��*
	container *
shared_name 
�
block4_conv3/kernel/AssignAssignblock4_conv3/kernelblock4_conv3/random_uniform*(
_output_shapes
:��*&
_class
loc:@block4_conv3/kernel*
use_locking(*
validate_shape(*
T0
�
block4_conv3/kernel/readIdentityblock4_conv3/kernel*&
_class
loc:@block4_conv3/kernel*
T0*(
_output_shapes
:��
a
block4_conv3/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block4_conv3/bias
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
block4_conv3/bias/AssignAssignblock4_conv3/biasblock4_conv3/Const*
_output_shapes	
:�*$
_class
loc:@block4_conv3/bias*
use_locking(*
validate_shape(*
T0
�
block4_conv3/bias/readIdentityblock4_conv3/bias*$
_class
loc:@block4_conv3/bias*
T0*
_output_shapes	
:�
w
&block4_conv3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block4_conv3/convolutionConv2Dblock4_conv2/Relublock4_conv3/kernel/read*
strides
*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
block4_conv3/BiasAddBiasAddblock4_conv3/convolutionblock4_conv3/bias/read*B
_output_shapes0
.:,����������������������������*
T0*
data_formatNHWC
|
block4_conv3/ReluRelublock4_conv3/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
�
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu*
ksize
*
strides
*B
_output_shapes0
.:,����������������������������*
paddingVALID*
T0*
data_formatNHWC
z
!block5_conv1/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
d
block5_conv1/random_uniform/minConst*
valueB
 *�Ѽ*
dtype0*
_output_shapes
: 
d
block5_conv1/random_uniform/maxConst*
valueB
 *��<*
dtype0*
_output_shapes
: 
�
)block5_conv1/random_uniform/RandomUniformRandomUniform!block5_conv1/random_uniform/shape*(
_output_shapes
:��*
T0*
dtype0*
seed���)*
seed2�ޟ
�
block5_conv1/random_uniform/subSubblock5_conv1/random_uniform/maxblock5_conv1/random_uniform/min*
T0*
_output_shapes
: 
�
block5_conv1/random_uniform/mulMul)block5_conv1/random_uniform/RandomUniformblock5_conv1/random_uniform/sub*
T0*(
_output_shapes
:��
�
block5_conv1/random_uniformAddblock5_conv1/random_uniform/mulblock5_conv1/random_uniform/min*
T0*(
_output_shapes
:��
�
block5_conv1/kernel
VariableV2*
shape:��*
dtype0*(
_output_shapes
:��*
	container *
shared_name 
�
block5_conv1/kernel/AssignAssignblock5_conv1/kernelblock5_conv1/random_uniform*(
_output_shapes
:��*&
_class
loc:@block5_conv1/kernel*
use_locking(*
validate_shape(*
T0
�
block5_conv1/kernel/readIdentityblock5_conv1/kernel*&
_class
loc:@block5_conv1/kernel*
T0*(
_output_shapes
:��
a
block5_conv1/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block5_conv1/bias
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
block5_conv1/bias/AssignAssignblock5_conv1/biasblock5_conv1/Const*
_output_shapes	
:�*$
_class
loc:@block5_conv1/bias*
use_locking(*
validate_shape(*
T0
�
block5_conv1/bias/readIdentityblock5_conv1/bias*$
_class
loc:@block5_conv1/bias*
T0*
_output_shapes	
:�
w
&block5_conv1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block5_conv1/convolutionConv2Dblock4_pool/MaxPoolblock5_conv1/kernel/read*
strides
*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
block5_conv1/BiasAddBiasAddblock5_conv1/convolutionblock5_conv1/bias/read*B
_output_shapes0
.:,����������������������������*
T0*
data_formatNHWC
|
block5_conv1/ReluRelublock5_conv1/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
z
!block5_conv2/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
d
block5_conv2/random_uniform/minConst*
valueB
 *�Ѽ*
dtype0*
_output_shapes
: 
d
block5_conv2/random_uniform/maxConst*
valueB
 *��<*
dtype0*
_output_shapes
: 
�
)block5_conv2/random_uniform/RandomUniformRandomUniform!block5_conv2/random_uniform/shape*(
_output_shapes
:��*
T0*
dtype0*
seed���)*
seed2䴴
�
block5_conv2/random_uniform/subSubblock5_conv2/random_uniform/maxblock5_conv2/random_uniform/min*
T0*
_output_shapes
: 
�
block5_conv2/random_uniform/mulMul)block5_conv2/random_uniform/RandomUniformblock5_conv2/random_uniform/sub*
T0*(
_output_shapes
:��
�
block5_conv2/random_uniformAddblock5_conv2/random_uniform/mulblock5_conv2/random_uniform/min*
T0*(
_output_shapes
:��
�
block5_conv2/kernel
VariableV2*
shape:��*
dtype0*(
_output_shapes
:��*
	container *
shared_name 
�
block5_conv2/kernel/AssignAssignblock5_conv2/kernelblock5_conv2/random_uniform*(
_output_shapes
:��*&
_class
loc:@block5_conv2/kernel*
use_locking(*
validate_shape(*
T0
�
block5_conv2/kernel/readIdentityblock5_conv2/kernel*&
_class
loc:@block5_conv2/kernel*
T0*(
_output_shapes
:��
a
block5_conv2/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block5_conv2/bias
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
block5_conv2/bias/AssignAssignblock5_conv2/biasblock5_conv2/Const*
_output_shapes	
:�*$
_class
loc:@block5_conv2/bias*
use_locking(*
validate_shape(*
T0
�
block5_conv2/bias/readIdentityblock5_conv2/bias*$
_class
loc:@block5_conv2/bias*
T0*
_output_shapes	
:�
w
&block5_conv2/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block5_conv2/convolutionConv2Dblock5_conv1/Relublock5_conv2/kernel/read*
strides
*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
block5_conv2/BiasAddBiasAddblock5_conv2/convolutionblock5_conv2/bias/read*B
_output_shapes0
.:,����������������������������*
T0*
data_formatNHWC
|
block5_conv2/ReluRelublock5_conv2/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
z
!block5_conv3/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
d
block5_conv3/random_uniform/minConst*
valueB
 *�Ѽ*
dtype0*
_output_shapes
: 
d
block5_conv3/random_uniform/maxConst*
valueB
 *��<*
dtype0*
_output_shapes
: 
�
)block5_conv3/random_uniform/RandomUniformRandomUniform!block5_conv3/random_uniform/shape*(
_output_shapes
:��*
T0*
dtype0*
seed���)*
seed2���
�
block5_conv3/random_uniform/subSubblock5_conv3/random_uniform/maxblock5_conv3/random_uniform/min*
T0*
_output_shapes
: 
�
block5_conv3/random_uniform/mulMul)block5_conv3/random_uniform/RandomUniformblock5_conv3/random_uniform/sub*
T0*(
_output_shapes
:��
�
block5_conv3/random_uniformAddblock5_conv3/random_uniform/mulblock5_conv3/random_uniform/min*
T0*(
_output_shapes
:��
�
block5_conv3/kernel
VariableV2*
shape:��*
dtype0*(
_output_shapes
:��*
	container *
shared_name 
�
block5_conv3/kernel/AssignAssignblock5_conv3/kernelblock5_conv3/random_uniform*(
_output_shapes
:��*&
_class
loc:@block5_conv3/kernel*
use_locking(*
validate_shape(*
T0
�
block5_conv3/kernel/readIdentityblock5_conv3/kernel*&
_class
loc:@block5_conv3/kernel*
T0*(
_output_shapes
:��
a
block5_conv3/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block5_conv3/bias
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
block5_conv3/bias/AssignAssignblock5_conv3/biasblock5_conv3/Const*
_output_shapes	
:�*$
_class
loc:@block5_conv3/bias*
use_locking(*
validate_shape(*
T0
�
block5_conv3/bias/readIdentityblock5_conv3/bias*$
_class
loc:@block5_conv3/bias*
T0*
_output_shapes	
:�
w
&block5_conv3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block5_conv3/convolutionConv2Dblock5_conv2/Relublock5_conv3/kernel/read*
strides
*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
block5_conv3/BiasAddBiasAddblock5_conv3/convolutionblock5_conv3/bias/read*B
_output_shapes0
.:,����������������������������*
T0*
data_formatNHWC
|
block5_conv3/ReluRelublock5_conv3/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
�
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu*
ksize
*
strides
*B
_output_shapes0
.:,����������������������������*
paddingVALID*
T0*
data_formatNHWC
l
PlaceholderPlaceholder*
dtype0*
shape:@*&
_output_shapes
:@
�
AssignAssignblock1_conv1/kernelPlaceholder*&
_output_shapes
:@*&
_class
loc:@block1_conv1/kernel*
use_locking( *
validate_shape(*
T0
V
Placeholder_1Placeholder*
dtype0*
shape:@*
_output_shapes
:@
�
Assign_1Assignblock1_conv1/biasPlaceholder_1*
_output_shapes
:@*$
_class
loc:@block1_conv1/bias*
use_locking( *
validate_shape(*
T0
n
Placeholder_2Placeholder*
dtype0*
shape:@@*&
_output_shapes
:@@
�
Assign_2Assignblock1_conv2/kernelPlaceholder_2*&
_output_shapes
:@@*&
_class
loc:@block1_conv2/kernel*
use_locking( *
validate_shape(*
T0
V
Placeholder_3Placeholder*
dtype0*
shape:@*
_output_shapes
:@
�
Assign_3Assignblock1_conv2/biasPlaceholder_3*
_output_shapes
:@*$
_class
loc:@block1_conv2/bias*
use_locking( *
validate_shape(*
T0
p
Placeholder_4Placeholder*
dtype0*
shape:@�*'
_output_shapes
:@�
�
Assign_4Assignblock2_conv1/kernelPlaceholder_4*'
_output_shapes
:@�*&
_class
loc:@block2_conv1/kernel*
use_locking( *
validate_shape(*
T0
X
Placeholder_5Placeholder*
dtype0*
shape:�*
_output_shapes	
:�
�
Assign_5Assignblock2_conv1/biasPlaceholder_5*
_output_shapes	
:�*$
_class
loc:@block2_conv1/bias*
use_locking( *
validate_shape(*
T0
r
Placeholder_6Placeholder*
dtype0*
shape:��*(
_output_shapes
:��
�
Assign_6Assignblock2_conv2/kernelPlaceholder_6*(
_output_shapes
:��*&
_class
loc:@block2_conv2/kernel*
use_locking( *
validate_shape(*
T0
X
Placeholder_7Placeholder*
dtype0*
shape:�*
_output_shapes	
:�
�
Assign_7Assignblock2_conv2/biasPlaceholder_7*
_output_shapes	
:�*$
_class
loc:@block2_conv2/bias*
use_locking( *
validate_shape(*
T0
r
Placeholder_8Placeholder*
dtype0*
shape:��*(
_output_shapes
:��
�
Assign_8Assignblock3_conv1/kernelPlaceholder_8*(
_output_shapes
:��*&
_class
loc:@block3_conv1/kernel*
use_locking( *
validate_shape(*
T0
X
Placeholder_9Placeholder*
dtype0*
shape:�*
_output_shapes	
:�
�
Assign_9Assignblock3_conv1/biasPlaceholder_9*
_output_shapes	
:�*$
_class
loc:@block3_conv1/bias*
use_locking( *
validate_shape(*
T0
s
Placeholder_10Placeholder*
dtype0*
shape:��*(
_output_shapes
:��
�
	Assign_10Assignblock3_conv2/kernelPlaceholder_10*(
_output_shapes
:��*&
_class
loc:@block3_conv2/kernel*
use_locking( *
validate_shape(*
T0
Y
Placeholder_11Placeholder*
dtype0*
shape:�*
_output_shapes	
:�
�
	Assign_11Assignblock3_conv2/biasPlaceholder_11*
_output_shapes	
:�*$
_class
loc:@block3_conv2/bias*
use_locking( *
validate_shape(*
T0
s
Placeholder_12Placeholder*
dtype0*
shape:��*(
_output_shapes
:��
�
	Assign_12Assignblock3_conv3/kernelPlaceholder_12*(
_output_shapes
:��*&
_class
loc:@block3_conv3/kernel*
use_locking( *
validate_shape(*
T0
Y
Placeholder_13Placeholder*
dtype0*
shape:�*
_output_shapes	
:�
�
	Assign_13Assignblock3_conv3/biasPlaceholder_13*
_output_shapes	
:�*$
_class
loc:@block3_conv3/bias*
use_locking( *
validate_shape(*
T0
s
Placeholder_14Placeholder*
dtype0*
shape:��*(
_output_shapes
:��
�
	Assign_14Assignblock4_conv1/kernelPlaceholder_14*(
_output_shapes
:��*&
_class
loc:@block4_conv1/kernel*
use_locking( *
validate_shape(*
T0
Y
Placeholder_15Placeholder*
dtype0*
shape:�*
_output_shapes	
:�
�
	Assign_15Assignblock4_conv1/biasPlaceholder_15*
_output_shapes	
:�*$
_class
loc:@block4_conv1/bias*
use_locking( *
validate_shape(*
T0
s
Placeholder_16Placeholder*
dtype0*
shape:��*(
_output_shapes
:��
�
	Assign_16Assignblock4_conv2/kernelPlaceholder_16*(
_output_shapes
:��*&
_class
loc:@block4_conv2/kernel*
use_locking( *
validate_shape(*
T0
Y
Placeholder_17Placeholder*
dtype0*
shape:�*
_output_shapes	
:�
�
	Assign_17Assignblock4_conv2/biasPlaceholder_17*
_output_shapes	
:�*$
_class
loc:@block4_conv2/bias*
use_locking( *
validate_shape(*
T0
s
Placeholder_18Placeholder*
dtype0*
shape:��*(
_output_shapes
:��
�
	Assign_18Assignblock4_conv3/kernelPlaceholder_18*(
_output_shapes
:��*&
_class
loc:@block4_conv3/kernel*
use_locking( *
validate_shape(*
T0
Y
Placeholder_19Placeholder*
dtype0*
shape:�*
_output_shapes	
:�
�
	Assign_19Assignblock4_conv3/biasPlaceholder_19*
_output_shapes	
:�*$
_class
loc:@block4_conv3/bias*
use_locking( *
validate_shape(*
T0
s
Placeholder_20Placeholder*
dtype0*
shape:��*(
_output_shapes
:��
�
	Assign_20Assignblock5_conv1/kernelPlaceholder_20*(
_output_shapes
:��*&
_class
loc:@block5_conv1/kernel*
use_locking( *
validate_shape(*
T0
Y
Placeholder_21Placeholder*
dtype0*
shape:�*
_output_shapes	
:�
�
	Assign_21Assignblock5_conv1/biasPlaceholder_21*
_output_shapes	
:�*$
_class
loc:@block5_conv1/bias*
use_locking( *
validate_shape(*
T0
s
Placeholder_22Placeholder*
dtype0*
shape:��*(
_output_shapes
:��
�
	Assign_22Assignblock5_conv2/kernelPlaceholder_22*(
_output_shapes
:��*&
_class
loc:@block5_conv2/kernel*
use_locking( *
validate_shape(*
T0
Y
Placeholder_23Placeholder*
dtype0*
shape:�*
_output_shapes	
:�
�
	Assign_23Assignblock5_conv2/biasPlaceholder_23*
_output_shapes	
:�*$
_class
loc:@block5_conv2/bias*
use_locking( *
validate_shape(*
T0
s
Placeholder_24Placeholder*
dtype0*
shape:��*(
_output_shapes
:��
�
	Assign_24Assignblock5_conv3/kernelPlaceholder_24*(
_output_shapes
:��*&
_class
loc:@block5_conv3/kernel*
use_locking( *
validate_shape(*
T0
Y
Placeholder_25Placeholder*
dtype0*
shape:�*
_output_shapes	
:�
�
	Assign_25Assignblock5_conv3/biasPlaceholder_25*
_output_shapes	
:�*$
_class
loc:@block5_conv3/bias*
use_locking( *
validate_shape(*
T0
�
IsVariableInitializedIsVariableInitializedblock1_conv1/kernel*&
_class
loc:@block1_conv1/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_1IsVariableInitializedblock1_conv1/bias*$
_class
loc:@block1_conv1/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_2IsVariableInitializedblock1_conv2/kernel*&
_class
loc:@block1_conv2/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_3IsVariableInitializedblock1_conv2/bias*$
_class
loc:@block1_conv2/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_4IsVariableInitializedblock2_conv1/kernel*&
_class
loc:@block2_conv1/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_5IsVariableInitializedblock2_conv1/bias*$
_class
loc:@block2_conv1/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_6IsVariableInitializedblock2_conv2/kernel*&
_class
loc:@block2_conv2/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_7IsVariableInitializedblock2_conv2/bias*$
_class
loc:@block2_conv2/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_8IsVariableInitializedblock3_conv1/kernel*&
_class
loc:@block3_conv1/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_9IsVariableInitializedblock3_conv1/bias*$
_class
loc:@block3_conv1/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_10IsVariableInitializedblock3_conv2/kernel*&
_class
loc:@block3_conv2/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_11IsVariableInitializedblock3_conv2/bias*$
_class
loc:@block3_conv2/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_12IsVariableInitializedblock3_conv3/kernel*&
_class
loc:@block3_conv3/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_13IsVariableInitializedblock3_conv3/bias*$
_class
loc:@block3_conv3/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_14IsVariableInitializedblock4_conv1/kernel*&
_class
loc:@block4_conv1/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_15IsVariableInitializedblock4_conv1/bias*$
_class
loc:@block4_conv1/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_16IsVariableInitializedblock4_conv2/kernel*&
_class
loc:@block4_conv2/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_17IsVariableInitializedblock4_conv2/bias*$
_class
loc:@block4_conv2/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_18IsVariableInitializedblock4_conv3/kernel*&
_class
loc:@block4_conv3/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_19IsVariableInitializedblock4_conv3/bias*$
_class
loc:@block4_conv3/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_20IsVariableInitializedblock5_conv1/kernel*&
_class
loc:@block5_conv1/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_21IsVariableInitializedblock5_conv1/bias*$
_class
loc:@block5_conv1/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_22IsVariableInitializedblock5_conv2/kernel*&
_class
loc:@block5_conv2/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_23IsVariableInitializedblock5_conv2/bias*$
_class
loc:@block5_conv2/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_24IsVariableInitializedblock5_conv3/kernel*&
_class
loc:@block5_conv3/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_25IsVariableInitializedblock5_conv3/bias*$
_class
loc:@block5_conv3/bias*
dtype0*
_output_shapes
: 
�
initNoOp^block1_conv1/kernel/Assign^block1_conv1/bias/Assign^block1_conv2/kernel/Assign^block1_conv2/bias/Assign^block2_conv1/kernel/Assign^block2_conv1/bias/Assign^block2_conv2/kernel/Assign^block2_conv2/bias/Assign^block3_conv1/kernel/Assign^block3_conv1/bias/Assign^block3_conv2/kernel/Assign^block3_conv2/bias/Assign^block3_conv3/kernel/Assign^block3_conv3/bias/Assign^block4_conv1/kernel/Assign^block4_conv1/bias/Assign^block4_conv2/kernel/Assign^block4_conv2/bias/Assign^block4_conv3/kernel/Assign^block4_conv3/bias/Assign^block5_conv1/kernel/Assign^block5_conv1/bias/Assign^block5_conv2/kernel/Assign^block5_conv2/bias/Assign^block5_conv3/kernel/Assign^block5_conv3/bias/Assign
�
1global_average_pooling2d_1/Mean/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
�
global_average_pooling2d_1/MeanMeanblock5_pool/MaxPool1global_average_pooling2d_1/Mean/reduction_indices*
	keep_dims( *
T0*(
_output_shapes
:����������*

Tidx0
m
dense_1/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
valueB
 *  ��*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
valueB
 *  �=*
dtype0*
_output_shapes
: 
�
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape* 
_output_shapes
:
��*
T0*
dtype0*
seed���)*
seed2���
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 
�
dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0* 
_output_shapes
:
��
�
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0* 
_output_shapes
:
��
�
dense_1/kernel
VariableV2*
shape:
��*
dtype0* 
_output_shapes
:
��*
	container *
shared_name 
�
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform* 
_output_shapes
:
��*!
_class
loc:@dense_1/kernel*
use_locking(*
validate_shape(*
T0
}
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:
��
\
dense_1/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�
z
dense_1/bias
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
_output_shapes	
:�*
_class
loc:@dense_1/bias*
use_locking(*
validate_shape(*
T0
r
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
T0*
_output_shapes	
:�
�
dense_1/MatMulMatMulglobal_average_pooling2d_1/Meandense_1/kernel/read*
transpose_a( *
T0*(
_output_shapes
:����������*
transpose_b( 
�
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*(
_output_shapes
:����������*
T0*
data_formatNHWC
X
dense_1/ReluReludense_1/BiasAdd*
T0*(
_output_shapes
:����������
m
dense_2/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
dense_2/random_uniform/minConst*
valueB
 *ܰ��*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
valueB
 *ܰ�=*
dtype0*
_output_shapes
: 
�
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
_output_shapes
:	�*
T0*
dtype0*
seed���)*
seed2���
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 
�
dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
T0*
_output_shapes
:	�

dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes
:	�
�
dense_2/kernel
VariableV2*
shape:	�*
dtype0*
_output_shapes
:	�*
	container *
shared_name 
�
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
_output_shapes
:	�*!
_class
loc:@dense_2/kernel*
use_locking(*
validate_shape(*
T0
|
dense_2/kernel/readIdentitydense_2/kernel*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes
:	�
Z
dense_2/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_2/bias
VariableV2*
shape:*
dtype0*
_output_shapes
:*
	container *
shared_name 
�
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
_output_shapes
:*
_class
loc:@dense_2/bias*
use_locking(*
validate_shape(*
T0
q
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
T0*
_output_shapes
:
�
dense_2/MatMulMatMuldense_1/Reludense_2/kernel/read*
transpose_a( *
T0*'
_output_shapes
:���������*
transpose_b( 
�
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*'
_output_shapes
:���������*
T0*
data_formatNHWC
]
dense_2/SigmoidSigmoiddense_2/BiasAdd*
T0*'
_output_shapes
:���������
^
SGD/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
r
SGD/iterations
VariableV2*
shape: *
dtype0	*
_output_shapes
: *
	container *
shared_name 
�
SGD/iterations/AssignAssignSGD/iterationsSGD/iterations/initial_value*
_output_shapes
: *!
_class
loc:@SGD/iterations*
use_locking(*
validate_shape(*
T0	
s
SGD/iterations/readIdentitySGD/iterations*!
_class
loc:@SGD/iterations*
T0	*
_output_shapes
: 
Y
SGD/lr/initial_valueConst*
valueB
 *��'7*
dtype0*
_output_shapes
: 
j
SGD/lr
VariableV2*
shape: *
dtype0*
_output_shapes
: *
	container *
shared_name 
�
SGD/lr/AssignAssignSGD/lrSGD/lr/initial_value*
_output_shapes
: *
_class
loc:@SGD/lr*
use_locking(*
validate_shape(*
T0
[
SGD/lr/readIdentitySGD/lr*
_class
loc:@SGD/lr*
T0*
_output_shapes
: 
_
SGD/momentum/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
p
SGD/momentum
VariableV2*
shape: *
dtype0*
_output_shapes
: *
	container *
shared_name 
�
SGD/momentum/AssignAssignSGD/momentumSGD/momentum/initial_value*
_output_shapes
: *
_class
loc:@SGD/momentum*
use_locking(*
validate_shape(*
T0
m
SGD/momentum/readIdentitySGD/momentum*
_class
loc:@SGD/momentum*
T0*
_output_shapes
: 
\
SGD/decay/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
	SGD/decay
VariableV2*
shape: *
dtype0*
_output_shapes
: *
	container *
shared_name 
�
SGD/decay/AssignAssign	SGD/decaySGD/decay/initial_value*
_output_shapes
: *
_class
loc:@SGD/decay*
use_locking(*
validate_shape(*
T0
d
SGD/decay/readIdentity	SGD/decay*
_class
loc:@SGD/decay*
T0*
_output_shapes
: 
�
dense_2_targetPlaceholder*
dtype0*%
shape:������������������*0
_output_shapes
:������������������
q
dense_2_sample_weightsPlaceholder*
dtype0*
shape:���������*#
_output_shapes
:���������
\
loss/dense_2_loss/ConstConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
\
loss/dense_2_loss/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
o
loss/dense_2_loss/subSubloss/dense_2_loss/sub/xloss/dense_2_loss/Const*
T0*
_output_shapes
: 
�
'loss/dense_2_loss/clip_by_value/MinimumMinimumdense_2/Sigmoidloss/dense_2_loss/sub*
T0*'
_output_shapes
:���������
�
loss/dense_2_loss/clip_by_valueMaximum'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*
T0*'
_output_shapes
:���������
^
loss/dense_2_loss/sub_1/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
loss/dense_2_loss/sub_1Subloss/dense_2_loss/sub_1/xloss/dense_2_loss/clip_by_value*
T0*'
_output_shapes
:���������
�
loss/dense_2_loss/truedivRealDivloss/dense_2_loss/clip_by_valueloss/dense_2_loss/sub_1*
T0*'
_output_shapes
:���������
i
loss/dense_2_loss/LogLogloss/dense_2_loss/truediv*
T0*'
_output_shapes
:���������
�
*loss/dense_2_loss/logistic_loss/zeros_like	ZerosLikeloss/dense_2_loss/Log*
T0*'
_output_shapes
:���������
�
,loss/dense_2_loss/logistic_loss/GreaterEqualGreaterEqualloss/dense_2_loss/Log*loss/dense_2_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:���������
�
&loss/dense_2_loss/logistic_loss/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualloss/dense_2_loss/Log*loss/dense_2_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:���������
s
#loss/dense_2_loss/logistic_loss/NegNegloss/dense_2_loss/Log*
T0*'
_output_shapes
:���������
�
(loss/dense_2_loss/logistic_loss/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqual#loss/dense_2_loss/logistic_loss/Negloss/dense_2_loss/Log*
T0*'
_output_shapes
:���������
�
#loss/dense_2_loss/logistic_loss/mulMulloss/dense_2_loss/Logdense_2_target*
T0*0
_output_shapes
:������������������
�
#loss/dense_2_loss/logistic_loss/subSub&loss/dense_2_loss/logistic_loss/Select#loss/dense_2_loss/logistic_loss/mul*
T0*0
_output_shapes
:������������������
�
#loss/dense_2_loss/logistic_loss/ExpExp(loss/dense_2_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:���������
�
%loss/dense_2_loss/logistic_loss/Log1pLog1p#loss/dense_2_loss/logistic_loss/Exp*
T0*'
_output_shapes
:���������
�
loss/dense_2_loss/logistic_lossAdd#loss/dense_2_loss/logistic_loss/sub%loss/dense_2_loss/logistic_loss/Log1p*
T0*0
_output_shapes
:������������������
s
(loss/dense_2_loss/Mean/reduction_indicesConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
loss/dense_2_loss/MeanMeanloss/dense_2_loss/logistic_loss(loss/dense_2_loss/Mean/reduction_indices*
	keep_dims( *
T0*#
_output_shapes
:���������*

Tidx0
m
*loss/dense_2_loss/Mean_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
�
loss/dense_2_loss/Mean_1Meanloss/dense_2_loss/Mean*loss/dense_2_loss/Mean_1/reduction_indices*
	keep_dims( *
T0*#
_output_shapes
:���������*

Tidx0
|
loss/dense_2_loss/mulMulloss/dense_2_loss/Mean_1dense_2_sample_weights*
T0*#
_output_shapes
:���������
a
loss/dense_2_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
loss/dense_2_loss/NotEqualNotEqualdense_2_sample_weightsloss/dense_2_loss/NotEqual/y*
T0*#
_output_shapes
:���������
w
loss/dense_2_loss/CastCastloss/dense_2_loss/NotEqual*

DstT0*#
_output_shapes
:���������*

SrcT0

c
loss/dense_2_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
loss/dense_2_loss/Mean_2Meanloss/dense_2_loss/Castloss/dense_2_loss/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
�
loss/dense_2_loss/truediv_1RealDivloss/dense_2_loss/mulloss/dense_2_loss/Mean_2*
T0*#
_output_shapes
:���������
c
loss/dense_2_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
�
loss/dense_2_loss/Mean_3Meanloss/dense_2_loss/truediv_1loss/dense_2_loss/Const_2*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
O

loss/mul/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_2_loss/Mean_3*
T0*
_output_shapes
: 
]
metrics/acc/RoundRounddense_2/Sigmoid*
T0*'
_output_shapes
:���������
x
metrics/acc/EqualEqualdense_2_targetmetrics/acc/Round*
T0*0
_output_shapes
:������������������
u
metrics/acc/CastCastmetrics/acc/Equal*

DstT0*0
_output_shapes
:������������������*

SrcT0

m
"metrics/acc/Mean/reduction_indicesConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
metrics/acc/MeanMeanmetrics/acc/Cast"metrics/acc/Mean/reduction_indices*
	keep_dims( *
T0*#
_output_shapes
:���������*

Tidx0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
}
metrics/acc/Mean_1Meanmetrics/acc/Meanmetrics/acc/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
|
training/SGD/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: *
_class
loc:@loss/mul
~
training/SGD/gradients/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: *
_class
loc:@loss/mul
�
training/SGD/gradients/FillFilltraining/SGD/gradients/Shapetraining/SGD/gradients/Const*
_class
loc:@loss/mul*
T0*
_output_shapes
: 
�
*training/SGD/gradients/loss/mul_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: *
_class
loc:@loss/mul
�
,training/SGD/gradients/loss/mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *
_class
loc:@loss/mul
�
:training/SGD/gradients/loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs*training/SGD/gradients/loss/mul_grad/Shape,training/SGD/gradients/loss/mul_grad/Shape_1*
_class
loc:@loss/mul*
T0*2
_output_shapes 
:���������:���������
�
(training/SGD/gradients/loss/mul_grad/mulMultraining/SGD/gradients/Fillloss/dense_2_loss/Mean_3*
_class
loc:@loss/mul*
T0*
_output_shapes
: 
�
(training/SGD/gradients/loss/mul_grad/SumSum(training/SGD/gradients/loss/mul_grad/mul:training/SGD/gradients/loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *
_class
loc:@loss/mul*
T0*
_output_shapes
:*

Tidx0
�
,training/SGD/gradients/loss/mul_grad/ReshapeReshape(training/SGD/gradients/loss/mul_grad/Sum*training/SGD/gradients/loss/mul_grad/Shape*
_class
loc:@loss/mul*
T0*
Tshape0*
_output_shapes
: 
�
*training/SGD/gradients/loss/mul_grad/mul_1Mul
loss/mul/xtraining/SGD/gradients/Fill*
_class
loc:@loss/mul*
T0*
_output_shapes
: 
�
*training/SGD/gradients/loss/mul_grad/Sum_1Sum*training/SGD/gradients/loss/mul_grad/mul_1<training/SGD/gradients/loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
_class
loc:@loss/mul*
T0*
_output_shapes
:*

Tidx0
�
.training/SGD/gradients/loss/mul_grad/Reshape_1Reshape*training/SGD/gradients/loss/mul_grad/Sum_1,training/SGD/gradients/loss/mul_grad/Shape_1*
_class
loc:@loss/mul*
T0*
Tshape0*
_output_shapes
: 
�
Btraining/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_3
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/ReshapeReshape.training/SGD/gradients/loss/mul_grad/Reshape_1Btraining/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Reshape/shape*+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*
Tshape0*
_output_shapes
:
�
:training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/ShapeShapeloss/dense_2_loss/truediv_1*+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*
_output_shapes
:*
out_type0
�
9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/TileTile<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Reshape:training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������*+
_class!
loc:@loss/dense_2_loss/Mean_3
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape_1Shapeloss/dense_2_loss/truediv_1*+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*
_output_shapes
:*
out_type0
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_3
�
:training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_3
�
9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/ProdProd<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape_1:training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Const*
	keep_dims( *+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*
_output_shapes
: *

Tidx0
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_3
�
;training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Prod_1Prod<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape_2<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Const_1*
	keep_dims( *+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*
_output_shapes
: *

Tidx0
�
>training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_3
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/MaximumMaximum;training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Prod_1>training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Maximum/y*+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*
_output_shapes
: 
�
=training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/floordivFloorDiv9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Prod<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Maximum*+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*
_output_shapes
: 
�
9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/CastCast=training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/floordiv*+
_class!
loc:@loss/dense_2_loss/Mean_3*

DstT0*
_output_shapes
: *

SrcT0
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/truedivRealDiv9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Tile9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Cast*+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*#
_output_shapes
:���������
�
=training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/ShapeShapeloss/dense_2_loss/mul*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*
_output_shapes
:*
out_type0
�
?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *.
_class$
" loc:@loss/dense_2_loss/truediv_1
�
Mtraining/SGD/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs=training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Shape?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*2
_output_shapes 
:���������:���������
�
?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/RealDivRealDiv<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/truedivloss/dense_2_loss/Mean_2*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*#
_output_shapes
:���������
�
;training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/SumSum?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/RealDivMtraining/SGD/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs*
	keep_dims( *.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*
_output_shapes
:*

Tidx0
�
?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/ReshapeReshape;training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Sum=training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Shape*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*
Tshape0*#
_output_shapes
:���������
�
;training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/NegNegloss/dense_2_loss/mul*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*#
_output_shapes
:���������
�
Atraining/SGD/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1RealDiv;training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Negloss/dense_2_loss/Mean_2*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*#
_output_shapes
:���������
�
Atraining/SGD/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2RealDivAtraining/SGD/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1loss/dense_2_loss/Mean_2*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*#
_output_shapes
:���������
�
;training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/mulMul<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/truedivAtraining/SGD/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*#
_output_shapes
:���������
�
=training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1Sum;training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/mulOtraining/SGD/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs:1*
	keep_dims( *.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*
_output_shapes
:*

Tidx0
�
Atraining/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Reshape_1Reshape=training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*
Tshape0*
_output_shapes
: 
�
7training/SGD/gradients/loss/dense_2_loss/mul_grad/ShapeShapeloss/dense_2_loss/Mean_1*(
_class
loc:@loss/dense_2_loss/mul*
T0*
_output_shapes
:*
out_type0
�
9training/SGD/gradients/loss/dense_2_loss/mul_grad/Shape_1Shapedense_2_sample_weights*(
_class
loc:@loss/dense_2_loss/mul*
T0*
_output_shapes
:*
out_type0
�
Gtraining/SGD/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs7training/SGD/gradients/loss/dense_2_loss/mul_grad/Shape9training/SGD/gradients/loss/dense_2_loss/mul_grad/Shape_1*(
_class
loc:@loss/dense_2_loss/mul*
T0*2
_output_shapes 
:���������:���������
�
5training/SGD/gradients/loss/dense_2_loss/mul_grad/mulMul?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Reshapedense_2_sample_weights*(
_class
loc:@loss/dense_2_loss/mul*
T0*#
_output_shapes
:���������
�
5training/SGD/gradients/loss/dense_2_loss/mul_grad/SumSum5training/SGD/gradients/loss/dense_2_loss/mul_grad/mulGtraining/SGD/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *(
_class
loc:@loss/dense_2_loss/mul*
T0*
_output_shapes
:*

Tidx0
�
9training/SGD/gradients/loss/dense_2_loss/mul_grad/ReshapeReshape5training/SGD/gradients/loss/dense_2_loss/mul_grad/Sum7training/SGD/gradients/loss/dense_2_loss/mul_grad/Shape*(
_class
loc:@loss/dense_2_loss/mul*
T0*
Tshape0*#
_output_shapes
:���������
�
7training/SGD/gradients/loss/dense_2_loss/mul_grad/mul_1Mulloss/dense_2_loss/Mean_1?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Reshape*(
_class
loc:@loss/dense_2_loss/mul*
T0*#
_output_shapes
:���������
�
7training/SGD/gradients/loss/dense_2_loss/mul_grad/Sum_1Sum7training/SGD/gradients/loss/dense_2_loss/mul_grad/mul_1Itraining/SGD/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *(
_class
loc:@loss/dense_2_loss/mul*
T0*
_output_shapes
:*

Tidx0
�
;training/SGD/gradients/loss/dense_2_loss/mul_grad/Reshape_1Reshape7training/SGD/gradients/loss/dense_2_loss/mul_grad/Sum_19training/SGD/gradients/loss/dense_2_loss/mul_grad/Shape_1*(
_class
loc:@loss/dense_2_loss/mul*
T0*
Tshape0*#
_output_shapes
:���������
�
:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/ShapeShapeloss/dense_2_loss/Mean*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
:*
out_type0
�
9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_1
�
8training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/addAdd*loss/dense_2_loss/Mean_1/reduction_indices9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Size*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
: 
�
8training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/modFloorMod8training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/add9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Size*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
: 
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_1Const*
valueB: *
dtype0*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_1
�
@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_1
�
:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/rangeRange@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range/start9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Size@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range/delta*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
:*

Tidx0
�
?training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_1
�
9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/FillFill<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_1?training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Fill/value*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
: 
�
Btraining/SGD/gradients/loss/dense_2_loss/Mean_1_grad/DynamicStitchDynamicStitch:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range8training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/mod:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Fill*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
N*#
_output_shapes
:���������
�
>training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_1
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/MaximumMaximumBtraining/SGD/gradients/loss/dense_2_loss/Mean_1_grad/DynamicStitch>training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Maximum/y*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*#
_output_shapes
:���������
�
=training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/floordivFloorDiv:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Maximum*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*#
_output_shapes
:���������
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/ReshapeReshape9training/SGD/gradients/loss/dense_2_loss/mul_grad/ReshapeBtraining/SGD/gradients/loss/dense_2_loss/Mean_1_grad/DynamicStitch*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
Tshape0*
_output_shapes
:
�
9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/TileTile<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Reshape=training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/floordiv*

Tmultiples0*
T0*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_2Shapeloss/dense_2_loss/Mean*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
:*
out_type0
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_3Shapeloss/dense_2_loss/Mean_1*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
:*
out_type0
�
:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/ProdProd<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_2:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Const*
	keep_dims( *+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
: *

Tidx0
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
;training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Prod_1Prod<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_3<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Const_1*
	keep_dims( *+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
: *

Tidx0
�
@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_1
�
>training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1Maximum;training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Prod_1@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1/y*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
: 
�
?training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/floordiv_1FloorDiv9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Prod>training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
: 
�
9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/CastCast?training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/floordiv_1*+
_class!
loc:@loss/dense_2_loss/Mean_1*

DstT0*
_output_shapes
: *

SrcT0
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/truedivRealDiv9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Tile9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Cast*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*#
_output_shapes
:���������
�
8training/SGD/gradients/loss/dense_2_loss/Mean_grad/ShapeShapeloss/dense_2_loss/logistic_loss*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
:*
out_type0
�
7training/SGD/gradients/loss/dense_2_loss/Mean_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean
�
6training/SGD/gradients/loss/dense_2_loss/Mean_grad/addAdd(loss/dense_2_loss/Mean/reduction_indices7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Size*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
: 
�
6training/SGD/gradients/loss/dense_2_loss/Mean_grad/modFloorMod6training/SGD/gradients/loss/dense_2_loss/Mean_grad/add7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Size*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
: 
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean
�
>training/SGD/gradients/loss/dense_2_loss/Mean_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean
�
>training/SGD/gradients/loss/dense_2_loss/Mean_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean
�
8training/SGD/gradients/loss/dense_2_loss/Mean_grad/rangeRange>training/SGD/gradients/loss/dense_2_loss/Mean_grad/range/start7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Size>training/SGD/gradients/loss/dense_2_loss/Mean_grad/range/delta*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:*

Tidx0
�
=training/SGD/gradients/loss/dense_2_loss/Mean_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean
�
7training/SGD/gradients/loss/dense_2_loss/Mean_grad/FillFill:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_1=training/SGD/gradients/loss/dense_2_loss/Mean_grad/Fill/value*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
: 
�
@training/SGD/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchDynamicStitch8training/SGD/gradients/loss/dense_2_loss/Mean_grad/range6training/SGD/gradients/loss/dense_2_loss/Mean_grad/mod8training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Fill*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
N*#
_output_shapes
:���������
�
<training/SGD/gradients/loss/dense_2_loss/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/MaximumMaximum@training/SGD/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch<training/SGD/gradients/loss/dense_2_loss/Mean_grad/Maximum/y*)
_class
loc:@loss/dense_2_loss/Mean*
T0*#
_output_shapes
:���������
�
;training/SGD/gradients/loss/dense_2_loss/Mean_grad/floordivFloorDiv8training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Maximum*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
:
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/ReshapeReshape<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/truediv@training/SGD/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
Tshape0*
_output_shapes
:
�
7training/SGD/gradients/loss/dense_2_loss/Mean_grad/TileTile:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Reshape;training/SGD/gradients/loss/dense_2_loss/Mean_grad/floordiv*

Tmultiples0*
T0*0
_output_shapes
:������������������*)
_class
loc:@loss/dense_2_loss/Mean
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_2Shapeloss/dense_2_loss/logistic_loss*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
:*
out_type0
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_3Shapeloss/dense_2_loss/Mean*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
:*
out_type0
�
8training/SGD/gradients/loss/dense_2_loss/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:*)
_class
loc:@loss/dense_2_loss/Mean
�
7training/SGD/gradients/loss/dense_2_loss/Mean_grad/ProdProd:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_28training/SGD/gradients/loss/dense_2_loss/Mean_grad/Const*
	keep_dims( *)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
: *

Tidx0
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:*)
_class
loc:@loss/dense_2_loss/Mean
�
9training/SGD/gradients/loss/dense_2_loss/Mean_grad/Prod_1Prod:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_3:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Const_1*
	keep_dims( *)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
: *

Tidx0
�
>training/SGD/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean
�
<training/SGD/gradients/loss/dense_2_loss/Mean_grad/Maximum_1Maximum9training/SGD/gradients/loss/dense_2_loss/Mean_grad/Prod_1>training/SGD/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/y*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
: 
�
=training/SGD/gradients/loss/dense_2_loss/Mean_grad/floordiv_1FloorDiv7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Prod<training/SGD/gradients/loss/dense_2_loss/Mean_grad/Maximum_1*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
: 
�
7training/SGD/gradients/loss/dense_2_loss/Mean_grad/CastCast=training/SGD/gradients/loss/dense_2_loss/Mean_grad/floordiv_1*)
_class
loc:@loss/dense_2_loss/Mean*

DstT0*
_output_shapes
: *

SrcT0
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/truedivRealDiv7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Tile7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Cast*)
_class
loc:@loss/dense_2_loss/Mean*
T0*0
_output_shapes
:������������������
�
Atraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/ShapeShape#loss/dense_2_loss/logistic_loss/sub*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
T0*
_output_shapes
:*
out_type0
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1Shape%loss/dense_2_loss/logistic_loss/Log1p*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
T0*
_output_shapes
:*
out_type0
�
Qtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgsAtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/ShapeCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
T0*2
_output_shapes 
:���������:���������
�
?training/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/SumSum:training/SGD/gradients/loss/dense_2_loss/Mean_grad/truedivQtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgs*
	keep_dims( *2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
T0*
_output_shapes
:*

Tidx0
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeReshape?training/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/SumAtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Shape*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
T0*
Tshape0*0
_output_shapes
:������������������
�
Atraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Sum_1Sum:training/SGD/gradients/loss/dense_2_loss/Mean_grad/truedivStraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgs:1*
	keep_dims( *2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
T0*
_output_shapes
:*

Tidx0
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1ReshapeAtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Sum_1Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
T0*
Tshape0*'
_output_shapes
:���������
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ShapeShape&loss/dense_2_loss/logistic_loss/Select*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
T0*
_output_shapes
:*
out_type0
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1Shape#loss/dense_2_loss/logistic_loss/mul*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
T0*
_output_shapes
:*
out_type0
�
Utraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ShapeGtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
T0*2
_output_shapes 
:���������:���������
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/SumSumCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeUtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgs*
	keep_dims( *6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
T0*
_output_shapes
:*

Tidx0
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ReshapeReshapeCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/SumEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
T0*
Tshape0*'
_output_shapes
:���������
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Sum_1SumCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeWtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
T0*
_output_shapes
:*

Tidx0
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/NegNegEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Sum_1*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
T0*
_output_shapes
:
�
Itraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1ReshapeCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/NegGtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
T0*
Tshape0*0
_output_shapes
:������������������
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add/xConstF^training/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1*
valueB
 *  �?*
dtype0*
_output_shapes
: *8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/addAddGtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add/x#loss/dense_2_loss/logistic_loss/Exp*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*
T0*'
_output_shapes
:���������
�
Ltraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/Reciprocal
ReciprocalEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*
T0*'
_output_shapes
:���������
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/mulMulEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1Ltraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/Reciprocal*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*
T0*'
_output_shapes
:���������
�
Mtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_like	ZerosLikeloss/dense_2_loss/Log*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*
T0*'
_output_shapes
:���������
�
Itraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_grad/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualGtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ReshapeMtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_like*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*
T0*'
_output_shapes
:���������
�
Ktraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_grad/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqualMtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_likeGtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*
T0*'
_output_shapes
:���������
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ShapeShapeloss/dense_2_loss/Log*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*
_output_shapes
:*
out_type0
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1Shapedense_2_target*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*
_output_shapes
:*
out_type0
�
Utraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ShapeGtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*2
_output_shapes 
:���������:���������
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/mulMulItraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1dense_2_target*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*0
_output_shapes
:������������������
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/SumSumCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/mulUtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*
_output_shapes
:*

Tidx0
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ReshapeReshapeCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/SumEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*
Tshape0*'
_output_shapes
:���������
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/mul_1Mulloss/dense_2_loss/LogItraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*0
_output_shapes
:������������������
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Sum_1SumEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/mul_1Wtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*
_output_shapes
:*

Tidx0
�
Itraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Reshape_1ReshapeEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Sum_1Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*
Tshape0*0
_output_shapes
:������������������
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mulMulEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/mul#loss/dense_2_loss/logistic_loss/Exp*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/Exp*
T0*'
_output_shapes
:���������
�
Otraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_like	ZerosLike#loss/dense_2_loss/logistic_loss/Neg*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:���������
�
Ktraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mulOtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_like*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:���������
�
Mtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqualOtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_likeCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mul*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:���������
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Neg_grad/NegNegKtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/Neg*
T0*'
_output_shapes
:���������
�
training/SGD/gradients/AddNAddNItraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_grad/SelectGtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ReshapeMtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select_1Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Neg_grad/Neg*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*
T0*
N*'
_output_shapes
:���������
�
<training/SGD/gradients/loss/dense_2_loss/Log_grad/Reciprocal
Reciprocalloss/dense_2_loss/truediv^training/SGD/gradients/AddN*(
_class
loc:@loss/dense_2_loss/Log*
T0*'
_output_shapes
:���������
�
5training/SGD/gradients/loss/dense_2_loss/Log_grad/mulMultraining/SGD/gradients/AddN<training/SGD/gradients/loss/dense_2_loss/Log_grad/Reciprocal*(
_class
loc:@loss/dense_2_loss/Log*
T0*'
_output_shapes
:���������
�
;training/SGD/gradients/loss/dense_2_loss/truediv_grad/ShapeShapeloss/dense_2_loss/clip_by_value*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*
_output_shapes
:*
out_type0
�
=training/SGD/gradients/loss/dense_2_loss/truediv_grad/Shape_1Shapeloss/dense_2_loss/sub_1*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*
_output_shapes
:*
out_type0
�
Ktraining/SGD/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs;training/SGD/gradients/loss/dense_2_loss/truediv_grad/Shape=training/SGD/gradients/loss/dense_2_loss/truediv_grad/Shape_1*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*2
_output_shapes 
:���������:���������
�
=training/SGD/gradients/loss/dense_2_loss/truediv_grad/RealDivRealDiv5training/SGD/gradients/loss/dense_2_loss/Log_grad/mulloss/dense_2_loss/sub_1*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*'
_output_shapes
:���������
�
9training/SGD/gradients/loss/dense_2_loss/truediv_grad/SumSum=training/SGD/gradients/loss/dense_2_loss/truediv_grad/RealDivKtraining/SGD/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs*
	keep_dims( *,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*
_output_shapes
:*

Tidx0
�
=training/SGD/gradients/loss/dense_2_loss/truediv_grad/ReshapeReshape9training/SGD/gradients/loss/dense_2_loss/truediv_grad/Sum;training/SGD/gradients/loss/dense_2_loss/truediv_grad/Shape*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*
Tshape0*'
_output_shapes
:���������
�
9training/SGD/gradients/loss/dense_2_loss/truediv_grad/NegNegloss/dense_2_loss/clip_by_value*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*'
_output_shapes
:���������
�
?training/SGD/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1RealDiv9training/SGD/gradients/loss/dense_2_loss/truediv_grad/Negloss/dense_2_loss/sub_1*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*'
_output_shapes
:���������
�
?training/SGD/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2RealDiv?training/SGD/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1loss/dense_2_loss/sub_1*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*'
_output_shapes
:���������
�
9training/SGD/gradients/loss/dense_2_loss/truediv_grad/mulMul5training/SGD/gradients/loss/dense_2_loss/Log_grad/mul?training/SGD/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*'
_output_shapes
:���������
�
;training/SGD/gradients/loss/dense_2_loss/truediv_grad/Sum_1Sum9training/SGD/gradients/loss/dense_2_loss/truediv_grad/mulMtraining/SGD/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*
_output_shapes
:*

Tidx0
�
?training/SGD/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Reshape;training/SGD/gradients/loss/dense_2_loss/truediv_grad/Sum_1=training/SGD/gradients/loss/dense_2_loss/truediv_grad/Shape_1*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*
Tshape0*'
_output_shapes
:���������
�
9training/SGD/gradients/loss/dense_2_loss/sub_1_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: **
_class 
loc:@loss/dense_2_loss/sub_1
�
;training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Shape_1Shapeloss/dense_2_loss/clip_by_value**
_class 
loc:@loss/dense_2_loss/sub_1*
T0*
_output_shapes
:*
out_type0
�
Itraining/SGD/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs9training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Shape;training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Shape_1**
_class 
loc:@loss/dense_2_loss/sub_1*
T0*2
_output_shapes 
:���������:���������
�
7training/SGD/gradients/loss/dense_2_loss/sub_1_grad/SumSum?training/SGD/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Itraining/SGD/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgs*
	keep_dims( **
_class 
loc:@loss/dense_2_loss/sub_1*
T0*
_output_shapes
:*

Tidx0
�
;training/SGD/gradients/loss/dense_2_loss/sub_1_grad/ReshapeReshape7training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Sum9training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Shape**
_class 
loc:@loss/dense_2_loss/sub_1*
T0*
Tshape0*
_output_shapes
: 
�
9training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Sum_1Sum?training/SGD/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Ktraining/SGD/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( **
_class 
loc:@loss/dense_2_loss/sub_1*
T0*
_output_shapes
:*

Tidx0
�
7training/SGD/gradients/loss/dense_2_loss/sub_1_grad/NegNeg9training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Sum_1**
_class 
loc:@loss/dense_2_loss/sub_1*
T0*
_output_shapes
:
�
=training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Reshape_1Reshape7training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Neg;training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Shape_1**
_class 
loc:@loss/dense_2_loss/sub_1*
T0*
Tshape0*'
_output_shapes
:���������
�
training/SGD/gradients/AddN_1AddN=training/SGD/gradients/loss/dense_2_loss/truediv_grad/Reshape=training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Reshape_1*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*
N*'
_output_shapes
:���������
�
Atraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeShape'loss/dense_2_loss/clip_by_value/Minimum*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*
_output_shapes
:*
out_type0
�
Ctraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
�
Ctraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Shapetraining/SGD/gradients/AddN_1*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*
_output_shapes
:*
out_type0
�
Gtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
�
Atraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/zerosFillCtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Gtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/Const*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*'
_output_shapes
:���������
�
Htraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*'
_output_shapes
:���������
�
Qtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsAtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeCtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*2
_output_shapes 
:���������:���������
�
Btraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/SelectSelectHtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualtraining/SGD/gradients/AddN_1Atraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/zeros*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*'
_output_shapes
:���������
�
Dtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1SelectHtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualAtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/zerostraining/SGD/gradients/AddN_1*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*'
_output_shapes
:���������
�
?training/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/SumSumBtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/SelectQtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*
_output_shapes
:*

Tidx0
�
Ctraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeReshape?training/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/SumAtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*
Tshape0*'
_output_shapes
:���������
�
Atraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1SumDtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1Straining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*
_output_shapes
:*

Tidx0
�
Etraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_1ReshapeAtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1Ctraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*
Tshape0*
_output_shapes
: 
�
Itraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeShapedense_2/Sigmoid*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*
_output_shapes
:*
out_type0
�
Ktraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
�
Ktraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2ShapeCtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*
_output_shapes
:*
out_type0
�
Otraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
�
Itraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosFillKtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2Otraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/Const*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*'
_output_shapes
:���������
�
Mtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualdense_2/Sigmoidloss/dense_2_loss/sub*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*'
_output_shapes
:���������
�
Ytraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsItraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeKtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*2
_output_shapes 
:���������:���������
�
Jtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectSelectMtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualCtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeItraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*'
_output_shapes
:���������
�
Ltraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1SelectMtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualItraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosCtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*'
_output_shapes
:���������
�
Gtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumSumJtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectYtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*
_output_shapes
:*

Tidx0
�
Ktraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ReshapeReshapeGtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumItraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*
Tshape0*'
_output_shapes
:���������
�
Itraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1SumLtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1[training/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*
_output_shapes
:*

Tidx0
�
Mtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeItraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1Ktraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*
Tshape0*
_output_shapes
: 
�
7training/SGD/gradients/dense_2/Sigmoid_grad/SigmoidGradSigmoidGraddense_2/SigmoidKtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape*"
_class
loc:@dense_2/Sigmoid*
T0*'
_output_shapes
:���������
�
7training/SGD/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad7training/SGD/gradients/dense_2/Sigmoid_grad/SigmoidGrad*"
_class
loc:@dense_2/BiasAdd*
T0*
data_formatNHWC*
_output_shapes
:
�
1training/SGD/gradients/dense_2/MatMul_grad/MatMulMatMul7training/SGD/gradients/dense_2/Sigmoid_grad/SigmoidGraddense_2/kernel/read*!
_class
loc:@dense_2/MatMul*
transpose_a( *
T0*(
_output_shapes
:����������*
transpose_b(
�
3training/SGD/gradients/dense_2/MatMul_grad/MatMul_1MatMuldense_1/Relu7training/SGD/gradients/dense_2/Sigmoid_grad/SigmoidGrad*!
_class
loc:@dense_2/MatMul*
transpose_a(*
T0*
_output_shapes
:	�*
transpose_b( 
�
1training/SGD/gradients/dense_1/Relu_grad/ReluGradReluGrad1training/SGD/gradients/dense_2/MatMul_grad/MatMuldense_1/Relu*
_class
loc:@dense_1/Relu*
T0*(
_output_shapes
:����������
�
7training/SGD/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad1training/SGD/gradients/dense_1/Relu_grad/ReluGrad*"
_class
loc:@dense_1/BiasAdd*
T0*
data_formatNHWC*
_output_shapes	
:�
�
1training/SGD/gradients/dense_1/MatMul_grad/MatMulMatMul1training/SGD/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*!
_class
loc:@dense_1/MatMul*
transpose_a( *
T0*(
_output_shapes
:����������*
transpose_b(
�
3training/SGD/gradients/dense_1/MatMul_grad/MatMul_1MatMulglobal_average_pooling2d_1/Mean1training/SGD/gradients/dense_1/Relu_grad/ReluGrad*!
_class
loc:@dense_1/MatMul*
transpose_a(*
T0* 
_output_shapes
:
��*
transpose_b( 
�
Atraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/ShapeShapeblock5_pool/MaxPool*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:*
out_type0
�
@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: *2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
?training/SGD/gradients/global_average_pooling2d_1/Mean_grad/addAdd1global_average_pooling2d_1/Mean/reduction_indices@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/Size*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:
�
?training/SGD/gradients/global_average_pooling2d_1/Mean_grad/modFloorMod?training/SGD/gradients/global_average_pooling2d_1/Mean_grad/add@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/Size*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:*2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
Gtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: *2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
Gtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: *2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
Atraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/rangeRangeGtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range/start@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/SizeGtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range/delta*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
_output_shapes
:*

Tidx0
�
Ftraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: *2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/FillFillCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_1Ftraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Fill/value*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:
�
Itraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/DynamicStitchDynamicStitchAtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range?training/SGD/gradients/global_average_pooling2d_1/Mean_grad/modAtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/Fill*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
N*#
_output_shapes
:���������
�
Etraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: *2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/MaximumMaximumItraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/DynamicStitchEtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Maximum/y*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*#
_output_shapes
:���������
�
Dtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/floordivFloorDivAtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/ShapeCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Maximum*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/ReshapeReshape1training/SGD/gradients/dense_1/MatMul_grad/MatMulItraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/DynamicStitch*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
Tshape0*
_output_shapes
:
�
@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/TileTileCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/ReshapeDtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/floordiv*

Tmultiples0*
T0*J
_output_shapes8
6:4������������������������������������*2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_2Shapeblock5_pool/MaxPool*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:*
out_type0
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_3Shapeglobal_average_pooling2d_1/Mean*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:*
out_type0
�
Atraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:*2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/ProdProdCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_2Atraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Const*
	keep_dims( *2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
: *

Tidx0
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:*2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
Btraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Prod_1ProdCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_3Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Const_1*
	keep_dims( *2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
: *

Tidx0
�
Gtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: *2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
Etraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Maximum_1MaximumBtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Prod_1Gtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Maximum_1/y*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
: 
�
Ftraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/floordiv_1FloorDiv@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/ProdEtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Maximum_1*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
: 
�
@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/CastCastFtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/floordiv_1*2
_class(
&$loc:@global_average_pooling2d_1/Mean*

DstT0*
_output_shapes
: *

SrcT0
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/truedivRealDiv@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/Tile@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/Cast*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*B
_output_shapes0
.:,����������������������������
�
;training/SGD/gradients/block5_pool/MaxPool_grad/MaxPoolGradMaxPoolGradblock5_conv3/Relublock5_pool/MaxPoolCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/truediv*&
_class
loc:@block5_pool/MaxPool*
T0*
strides
*B
_output_shapes0
.:,����������������������������*
paddingVALID*
ksize
*
data_formatNHWC
�
6training/SGD/gradients/block5_conv3/Relu_grad/ReluGradReluGrad;training/SGD/gradients/block5_pool/MaxPool_grad/MaxPoolGradblock5_conv3/Relu*$
_class
loc:@block5_conv3/Relu*
T0*B
_output_shapes0
.:,����������������������������
�
<training/SGD/gradients/block5_conv3/BiasAdd_grad/BiasAddGradBiasAddGrad6training/SGD/gradients/block5_conv3/Relu_grad/ReluGrad*'
_class
loc:@block5_conv3/BiasAdd*
T0*
data_formatNHWC*
_output_shapes	
:�
�
;training/SGD/gradients/block5_conv3/convolution_grad/ShapeNShapeNblock5_conv2/Relublock5_conv3/kernel/read*+
_class!
loc:@block5_conv3/convolution*
T0*
N* 
_output_shapes
::*
out_type0
�
Htraining/SGD/gradients/block5_conv3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block5_conv3/convolution_grad/ShapeNblock5_conv3/kernel/read6training/SGD/gradients/block5_conv3/Relu_grad/ReluGrad*+
_class!
loc:@block5_conv3/convolution*
strides
*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
Itraining/SGD/gradients/block5_conv3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock5_conv2/Relu=training/SGD/gradients/block5_conv3/convolution_grad/ShapeN:16training/SGD/gradients/block5_conv3/Relu_grad/ReluGrad*+
_class!
loc:@block5_conv3/convolution*
strides
*(
_output_shapes
:��*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
6training/SGD/gradients/block5_conv2/Relu_grad/ReluGradReluGradHtraining/SGD/gradients/block5_conv3/convolution_grad/Conv2DBackpropInputblock5_conv2/Relu*$
_class
loc:@block5_conv2/Relu*
T0*B
_output_shapes0
.:,����������������������������
�
<training/SGD/gradients/block5_conv2/BiasAdd_grad/BiasAddGradBiasAddGrad6training/SGD/gradients/block5_conv2/Relu_grad/ReluGrad*'
_class
loc:@block5_conv2/BiasAdd*
T0*
data_formatNHWC*
_output_shapes	
:�
�
;training/SGD/gradients/block5_conv2/convolution_grad/ShapeNShapeNblock5_conv1/Relublock5_conv2/kernel/read*+
_class!
loc:@block5_conv2/convolution*
T0*
N* 
_output_shapes
::*
out_type0
�
Htraining/SGD/gradients/block5_conv2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block5_conv2/convolution_grad/ShapeNblock5_conv2/kernel/read6training/SGD/gradients/block5_conv2/Relu_grad/ReluGrad*+
_class!
loc:@block5_conv2/convolution*
strides
*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
Itraining/SGD/gradients/block5_conv2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock5_conv1/Relu=training/SGD/gradients/block5_conv2/convolution_grad/ShapeN:16training/SGD/gradients/block5_conv2/Relu_grad/ReluGrad*+
_class!
loc:@block5_conv2/convolution*
strides
*(
_output_shapes
:��*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
6training/SGD/gradients/block5_conv1/Relu_grad/ReluGradReluGradHtraining/SGD/gradients/block5_conv2/convolution_grad/Conv2DBackpropInputblock5_conv1/Relu*$
_class
loc:@block5_conv1/Relu*
T0*B
_output_shapes0
.:,����������������������������
�
<training/SGD/gradients/block5_conv1/BiasAdd_grad/BiasAddGradBiasAddGrad6training/SGD/gradients/block5_conv1/Relu_grad/ReluGrad*'
_class
loc:@block5_conv1/BiasAdd*
T0*
data_formatNHWC*
_output_shapes	
:�
�
;training/SGD/gradients/block5_conv1/convolution_grad/ShapeNShapeNblock4_pool/MaxPoolblock5_conv1/kernel/read*+
_class!
loc:@block5_conv1/convolution*
T0*
N* 
_output_shapes
::*
out_type0
�
Htraining/SGD/gradients/block5_conv1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block5_conv1/convolution_grad/ShapeNblock5_conv1/kernel/read6training/SGD/gradients/block5_conv1/Relu_grad/ReluGrad*+
_class!
loc:@block5_conv1/convolution*
strides
*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
Itraining/SGD/gradients/block5_conv1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock4_pool/MaxPool=training/SGD/gradients/block5_conv1/convolution_grad/ShapeN:16training/SGD/gradients/block5_conv1/Relu_grad/ReluGrad*+
_class!
loc:@block5_conv1/convolution*
strides
*(
_output_shapes
:��*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
;training/SGD/gradients/block4_pool/MaxPool_grad/MaxPoolGradMaxPoolGradblock4_conv3/Relublock4_pool/MaxPoolHtraining/SGD/gradients/block5_conv1/convolution_grad/Conv2DBackpropInput*&
_class
loc:@block4_pool/MaxPool*
T0*
strides
*B
_output_shapes0
.:,����������������������������*
paddingVALID*
ksize
*
data_formatNHWC
�
6training/SGD/gradients/block4_conv3/Relu_grad/ReluGradReluGrad;training/SGD/gradients/block4_pool/MaxPool_grad/MaxPoolGradblock4_conv3/Relu*$
_class
loc:@block4_conv3/Relu*
T0*B
_output_shapes0
.:,����������������������������
�
<training/SGD/gradients/block4_conv3/BiasAdd_grad/BiasAddGradBiasAddGrad6training/SGD/gradients/block4_conv3/Relu_grad/ReluGrad*'
_class
loc:@block4_conv3/BiasAdd*
T0*
data_formatNHWC*
_output_shapes	
:�
�
;training/SGD/gradients/block4_conv3/convolution_grad/ShapeNShapeNblock4_conv2/Relublock4_conv3/kernel/read*+
_class!
loc:@block4_conv3/convolution*
T0*
N* 
_output_shapes
::*
out_type0
�
Htraining/SGD/gradients/block4_conv3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block4_conv3/convolution_grad/ShapeNblock4_conv3/kernel/read6training/SGD/gradients/block4_conv3/Relu_grad/ReluGrad*+
_class!
loc:@block4_conv3/convolution*
strides
*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
Itraining/SGD/gradients/block4_conv3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock4_conv2/Relu=training/SGD/gradients/block4_conv3/convolution_grad/ShapeN:16training/SGD/gradients/block4_conv3/Relu_grad/ReluGrad*+
_class!
loc:@block4_conv3/convolution*
strides
*(
_output_shapes
:��*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
6training/SGD/gradients/block4_conv2/Relu_grad/ReluGradReluGradHtraining/SGD/gradients/block4_conv3/convolution_grad/Conv2DBackpropInputblock4_conv2/Relu*$
_class
loc:@block4_conv2/Relu*
T0*B
_output_shapes0
.:,����������������������������
�
<training/SGD/gradients/block4_conv2/BiasAdd_grad/BiasAddGradBiasAddGrad6training/SGD/gradients/block4_conv2/Relu_grad/ReluGrad*'
_class
loc:@block4_conv2/BiasAdd*
T0*
data_formatNHWC*
_output_shapes	
:�
�
;training/SGD/gradients/block4_conv2/convolution_grad/ShapeNShapeNblock4_conv1/Relublock4_conv2/kernel/read*+
_class!
loc:@block4_conv2/convolution*
T0*
N* 
_output_shapes
::*
out_type0
�
Htraining/SGD/gradients/block4_conv2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block4_conv2/convolution_grad/ShapeNblock4_conv2/kernel/read6training/SGD/gradients/block4_conv2/Relu_grad/ReluGrad*+
_class!
loc:@block4_conv2/convolution*
strides
*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
Itraining/SGD/gradients/block4_conv2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock4_conv1/Relu=training/SGD/gradients/block4_conv2/convolution_grad/ShapeN:16training/SGD/gradients/block4_conv2/Relu_grad/ReluGrad*+
_class!
loc:@block4_conv2/convolution*
strides
*(
_output_shapes
:��*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
6training/SGD/gradients/block4_conv1/Relu_grad/ReluGradReluGradHtraining/SGD/gradients/block4_conv2/convolution_grad/Conv2DBackpropInputblock4_conv1/Relu*$
_class
loc:@block4_conv1/Relu*
T0*B
_output_shapes0
.:,����������������������������
�
<training/SGD/gradients/block4_conv1/BiasAdd_grad/BiasAddGradBiasAddGrad6training/SGD/gradients/block4_conv1/Relu_grad/ReluGrad*'
_class
loc:@block4_conv1/BiasAdd*
T0*
data_formatNHWC*
_output_shapes	
:�
�
;training/SGD/gradients/block4_conv1/convolution_grad/ShapeNShapeNblock3_pool/MaxPoolblock4_conv1/kernel/read*+
_class!
loc:@block4_conv1/convolution*
T0*
N* 
_output_shapes
::*
out_type0
�
Htraining/SGD/gradients/block4_conv1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block4_conv1/convolution_grad/ShapeNblock4_conv1/kernel/read6training/SGD/gradients/block4_conv1/Relu_grad/ReluGrad*+
_class!
loc:@block4_conv1/convolution*
strides
*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
�
Itraining/SGD/gradients/block4_conv1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock3_pool/MaxPool=training/SGD/gradients/block4_conv1/convolution_grad/ShapeN:16training/SGD/gradients/block4_conv1/Relu_grad/ReluGrad*+
_class!
loc:@block4_conv1/convolution*
strides
*(
_output_shapes
:��*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(
^
training/SGD/AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 
�
training/SGD/AssignAdd	AssignAddSGD/iterationstraining/SGD/AssignAdd/value*!
_class
loc:@SGD/iterations*
T0	*
use_locking( *
_output_shapes
: 
{
training/SGD/ConstConst*'
valueB��*    *
dtype0*(
_output_shapes
:��
�
training/SGD/Variable
VariableV2*
shape:��*
dtype0*(
_output_shapes
:��*
	container *
shared_name 
�
training/SGD/Variable/AssignAssigntraining/SGD/Variabletraining/SGD/Const*(
_output_shapes
:��*(
_class
loc:@training/SGD/Variable*
use_locking(*
validate_shape(*
T0
�
training/SGD/Variable/readIdentitytraining/SGD/Variable*(
_class
loc:@training/SGD/Variable*
T0*(
_output_shapes
:��
c
training/SGD/Const_1Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/SGD/Variable_1
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
training/SGD/Variable_1/AssignAssigntraining/SGD/Variable_1training/SGD/Const_1*
_output_shapes	
:�**
_class 
loc:@training/SGD/Variable_1*
use_locking(*
validate_shape(*
T0
�
training/SGD/Variable_1/readIdentitytraining/SGD/Variable_1**
_class 
loc:@training/SGD/Variable_1*
T0*
_output_shapes	
:�
}
training/SGD/Const_2Const*'
valueB��*    *
dtype0*(
_output_shapes
:��
�
training/SGD/Variable_2
VariableV2*
shape:��*
dtype0*(
_output_shapes
:��*
	container *
shared_name 
�
training/SGD/Variable_2/AssignAssigntraining/SGD/Variable_2training/SGD/Const_2*(
_output_shapes
:��**
_class 
loc:@training/SGD/Variable_2*
use_locking(*
validate_shape(*
T0
�
training/SGD/Variable_2/readIdentitytraining/SGD/Variable_2**
_class 
loc:@training/SGD/Variable_2*
T0*(
_output_shapes
:��
c
training/SGD/Const_3Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/SGD/Variable_3
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
training/SGD/Variable_3/AssignAssigntraining/SGD/Variable_3training/SGD/Const_3*
_output_shapes	
:�**
_class 
loc:@training/SGD/Variable_3*
use_locking(*
validate_shape(*
T0
�
training/SGD/Variable_3/readIdentitytraining/SGD/Variable_3**
_class 
loc:@training/SGD/Variable_3*
T0*
_output_shapes	
:�
}
training/SGD/Const_4Const*'
valueB��*    *
dtype0*(
_output_shapes
:��
�
training/SGD/Variable_4
VariableV2*
shape:��*
dtype0*(
_output_shapes
:��*
	container *
shared_name 
�
training/SGD/Variable_4/AssignAssigntraining/SGD/Variable_4training/SGD/Const_4*(
_output_shapes
:��**
_class 
loc:@training/SGD/Variable_4*
use_locking(*
validate_shape(*
T0
�
training/SGD/Variable_4/readIdentitytraining/SGD/Variable_4**
_class 
loc:@training/SGD/Variable_4*
T0*(
_output_shapes
:��
c
training/SGD/Const_5Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/SGD/Variable_5
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
training/SGD/Variable_5/AssignAssigntraining/SGD/Variable_5training/SGD/Const_5*
_output_shapes	
:�**
_class 
loc:@training/SGD/Variable_5*
use_locking(*
validate_shape(*
T0
�
training/SGD/Variable_5/readIdentitytraining/SGD/Variable_5**
_class 
loc:@training/SGD/Variable_5*
T0*
_output_shapes	
:�
}
training/SGD/Const_6Const*'
valueB��*    *
dtype0*(
_output_shapes
:��
�
training/SGD/Variable_6
VariableV2*
shape:��*
dtype0*(
_output_shapes
:��*
	container *
shared_name 
�
training/SGD/Variable_6/AssignAssigntraining/SGD/Variable_6training/SGD/Const_6*(
_output_shapes
:��**
_class 
loc:@training/SGD/Variable_6*
use_locking(*
validate_shape(*
T0
�
training/SGD/Variable_6/readIdentitytraining/SGD/Variable_6**
_class 
loc:@training/SGD/Variable_6*
T0*(
_output_shapes
:��
c
training/SGD/Const_7Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/SGD/Variable_7
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
training/SGD/Variable_7/AssignAssigntraining/SGD/Variable_7training/SGD/Const_7*
_output_shapes	
:�**
_class 
loc:@training/SGD/Variable_7*
use_locking(*
validate_shape(*
T0
�
training/SGD/Variable_7/readIdentitytraining/SGD/Variable_7**
_class 
loc:@training/SGD/Variable_7*
T0*
_output_shapes	
:�
}
training/SGD/Const_8Const*'
valueB��*    *
dtype0*(
_output_shapes
:��
�
training/SGD/Variable_8
VariableV2*
shape:��*
dtype0*(
_output_shapes
:��*
	container *
shared_name 
�
training/SGD/Variable_8/AssignAssigntraining/SGD/Variable_8training/SGD/Const_8*(
_output_shapes
:��**
_class 
loc:@training/SGD/Variable_8*
use_locking(*
validate_shape(*
T0
�
training/SGD/Variable_8/readIdentitytraining/SGD/Variable_8**
_class 
loc:@training/SGD/Variable_8*
T0*(
_output_shapes
:��
c
training/SGD/Const_9Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/SGD/Variable_9
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
training/SGD/Variable_9/AssignAssigntraining/SGD/Variable_9training/SGD/Const_9*
_output_shapes	
:�**
_class 
loc:@training/SGD/Variable_9*
use_locking(*
validate_shape(*
T0
�
training/SGD/Variable_9/readIdentitytraining/SGD/Variable_9**
_class 
loc:@training/SGD/Variable_9*
T0*
_output_shapes	
:�
~
training/SGD/Const_10Const*'
valueB��*    *
dtype0*(
_output_shapes
:��
�
training/SGD/Variable_10
VariableV2*
shape:��*
dtype0*(
_output_shapes
:��*
	container *
shared_name 
�
training/SGD/Variable_10/AssignAssigntraining/SGD/Variable_10training/SGD/Const_10*(
_output_shapes
:��*+
_class!
loc:@training/SGD/Variable_10*
use_locking(*
validate_shape(*
T0
�
training/SGD/Variable_10/readIdentitytraining/SGD/Variable_10*+
_class!
loc:@training/SGD/Variable_10*
T0*(
_output_shapes
:��
d
training/SGD/Const_11Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/SGD/Variable_11
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
training/SGD/Variable_11/AssignAssigntraining/SGD/Variable_11training/SGD/Const_11*
_output_shapes	
:�*+
_class!
loc:@training/SGD/Variable_11*
use_locking(*
validate_shape(*
T0
�
training/SGD/Variable_11/readIdentitytraining/SGD/Variable_11*+
_class!
loc:@training/SGD/Variable_11*
T0*
_output_shapes	
:�
n
training/SGD/Const_12Const*
valueB
��*    *
dtype0* 
_output_shapes
:
��
�
training/SGD/Variable_12
VariableV2*
shape:
��*
dtype0* 
_output_shapes
:
��*
	container *
shared_name 
�
training/SGD/Variable_12/AssignAssigntraining/SGD/Variable_12training/SGD/Const_12* 
_output_shapes
:
��*+
_class!
loc:@training/SGD/Variable_12*
use_locking(*
validate_shape(*
T0
�
training/SGD/Variable_12/readIdentitytraining/SGD/Variable_12*+
_class!
loc:@training/SGD/Variable_12*
T0* 
_output_shapes
:
��
d
training/SGD/Const_13Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/SGD/Variable_13
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
	container *
shared_name 
�
training/SGD/Variable_13/AssignAssigntraining/SGD/Variable_13training/SGD/Const_13*
_output_shapes	
:�*+
_class!
loc:@training/SGD/Variable_13*
use_locking(*
validate_shape(*
T0
�
training/SGD/Variable_13/readIdentitytraining/SGD/Variable_13*+
_class!
loc:@training/SGD/Variable_13*
T0*
_output_shapes	
:�
l
training/SGD/Const_14Const*
valueB	�*    *
dtype0*
_output_shapes
:	�
�
training/SGD/Variable_14
VariableV2*
shape:	�*
dtype0*
_output_shapes
:	�*
	container *
shared_name 
�
training/SGD/Variable_14/AssignAssigntraining/SGD/Variable_14training/SGD/Const_14*
_output_shapes
:	�*+
_class!
loc:@training/SGD/Variable_14*
use_locking(*
validate_shape(*
T0
�
training/SGD/Variable_14/readIdentitytraining/SGD/Variable_14*+
_class!
loc:@training/SGD/Variable_14*
T0*
_output_shapes
:	�
b
training/SGD/Const_15Const*
valueB*    *
dtype0*
_output_shapes
:
�
training/SGD/Variable_15
VariableV2*
shape:*
dtype0*
_output_shapes
:*
	container *
shared_name 
�
training/SGD/Variable_15/AssignAssigntraining/SGD/Variable_15training/SGD/Const_15*
_output_shapes
:*+
_class!
loc:@training/SGD/Variable_15*
use_locking(*
validate_shape(*
T0
�
training/SGD/Variable_15/readIdentitytraining/SGD/Variable_15*+
_class!
loc:@training/SGD/Variable_15*
T0*
_output_shapes
:
y
training/SGD/mulMulSGD/momentum/readtraining/SGD/Variable/read*
T0*(
_output_shapes
:��
�
training/SGD/mul_1MulSGD/lr/readItraining/SGD/gradients/block4_conv1/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:��
p
training/SGD/subSubtraining/SGD/multraining/SGD/mul_1*
T0*(
_output_shapes
:��
�
training/SGD/AssignAssigntraining/SGD/Variabletraining/SGD/sub*(
_output_shapes
:��*(
_class
loc:@training/SGD/Variable*
use_locking(*
validate_shape(*
T0
v
training/SGD/addAddblock4_conv1/kernel/readtraining/SGD/sub*
T0*(
_output_shapes
:��
�
training/SGD/Assign_1Assignblock4_conv1/kerneltraining/SGD/add*(
_output_shapes
:��*&
_class
loc:@block4_conv1/kernel*
use_locking(*
validate_shape(*
T0
p
training/SGD/mul_2MulSGD/momentum/readtraining/SGD/Variable_1/read*
T0*
_output_shapes	
:�
�
training/SGD/mul_3MulSGD/lr/read<training/SGD/gradients/block4_conv1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
g
training/SGD/sub_1Subtraining/SGD/mul_2training/SGD/mul_3*
T0*
_output_shapes	
:�
�
training/SGD/Assign_2Assigntraining/SGD/Variable_1training/SGD/sub_1*
_output_shapes	
:�**
_class 
loc:@training/SGD/Variable_1*
use_locking(*
validate_shape(*
T0
k
training/SGD/add_1Addblock4_conv1/bias/readtraining/SGD/sub_1*
T0*
_output_shapes	
:�
�
training/SGD/Assign_3Assignblock4_conv1/biastraining/SGD/add_1*
_output_shapes	
:�*$
_class
loc:@block4_conv1/bias*
use_locking(*
validate_shape(*
T0
}
training/SGD/mul_4MulSGD/momentum/readtraining/SGD/Variable_2/read*
T0*(
_output_shapes
:��
�
training/SGD/mul_5MulSGD/lr/readItraining/SGD/gradients/block4_conv2/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:��
t
training/SGD/sub_2Subtraining/SGD/mul_4training/SGD/mul_5*
T0*(
_output_shapes
:��
�
training/SGD/Assign_4Assigntraining/SGD/Variable_2training/SGD/sub_2*(
_output_shapes
:��**
_class 
loc:@training/SGD/Variable_2*
use_locking(*
validate_shape(*
T0
z
training/SGD/add_2Addblock4_conv2/kernel/readtraining/SGD/sub_2*
T0*(
_output_shapes
:��
�
training/SGD/Assign_5Assignblock4_conv2/kerneltraining/SGD/add_2*(
_output_shapes
:��*&
_class
loc:@block4_conv2/kernel*
use_locking(*
validate_shape(*
T0
p
training/SGD/mul_6MulSGD/momentum/readtraining/SGD/Variable_3/read*
T0*
_output_shapes	
:�
�
training/SGD/mul_7MulSGD/lr/read<training/SGD/gradients/block4_conv2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
g
training/SGD/sub_3Subtraining/SGD/mul_6training/SGD/mul_7*
T0*
_output_shapes	
:�
�
training/SGD/Assign_6Assigntraining/SGD/Variable_3training/SGD/sub_3*
_output_shapes	
:�**
_class 
loc:@training/SGD/Variable_3*
use_locking(*
validate_shape(*
T0
k
training/SGD/add_3Addblock4_conv2/bias/readtraining/SGD/sub_3*
T0*
_output_shapes	
:�
�
training/SGD/Assign_7Assignblock4_conv2/biastraining/SGD/add_3*
_output_shapes	
:�*$
_class
loc:@block4_conv2/bias*
use_locking(*
validate_shape(*
T0
}
training/SGD/mul_8MulSGD/momentum/readtraining/SGD/Variable_4/read*
T0*(
_output_shapes
:��
�
training/SGD/mul_9MulSGD/lr/readItraining/SGD/gradients/block4_conv3/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:��
t
training/SGD/sub_4Subtraining/SGD/mul_8training/SGD/mul_9*
T0*(
_output_shapes
:��
�
training/SGD/Assign_8Assigntraining/SGD/Variable_4training/SGD/sub_4*(
_output_shapes
:��**
_class 
loc:@training/SGD/Variable_4*
use_locking(*
validate_shape(*
T0
z
training/SGD/add_4Addblock4_conv3/kernel/readtraining/SGD/sub_4*
T0*(
_output_shapes
:��
�
training/SGD/Assign_9Assignblock4_conv3/kerneltraining/SGD/add_4*(
_output_shapes
:��*&
_class
loc:@block4_conv3/kernel*
use_locking(*
validate_shape(*
T0
q
training/SGD/mul_10MulSGD/momentum/readtraining/SGD/Variable_5/read*
T0*
_output_shapes	
:�
�
training/SGD/mul_11MulSGD/lr/read<training/SGD/gradients/block4_conv3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
i
training/SGD/sub_5Subtraining/SGD/mul_10training/SGD/mul_11*
T0*
_output_shapes	
:�
�
training/SGD/Assign_10Assigntraining/SGD/Variable_5training/SGD/sub_5*
_output_shapes	
:�**
_class 
loc:@training/SGD/Variable_5*
use_locking(*
validate_shape(*
T0
k
training/SGD/add_5Addblock4_conv3/bias/readtraining/SGD/sub_5*
T0*
_output_shapes	
:�
�
training/SGD/Assign_11Assignblock4_conv3/biastraining/SGD/add_5*
_output_shapes	
:�*$
_class
loc:@block4_conv3/bias*
use_locking(*
validate_shape(*
T0
~
training/SGD/mul_12MulSGD/momentum/readtraining/SGD/Variable_6/read*
T0*(
_output_shapes
:��
�
training/SGD/mul_13MulSGD/lr/readItraining/SGD/gradients/block5_conv1/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:��
v
training/SGD/sub_6Subtraining/SGD/mul_12training/SGD/mul_13*
T0*(
_output_shapes
:��
�
training/SGD/Assign_12Assigntraining/SGD/Variable_6training/SGD/sub_6*(
_output_shapes
:��**
_class 
loc:@training/SGD/Variable_6*
use_locking(*
validate_shape(*
T0
z
training/SGD/add_6Addblock5_conv1/kernel/readtraining/SGD/sub_6*
T0*(
_output_shapes
:��
�
training/SGD/Assign_13Assignblock5_conv1/kerneltraining/SGD/add_6*(
_output_shapes
:��*&
_class
loc:@block5_conv1/kernel*
use_locking(*
validate_shape(*
T0
q
training/SGD/mul_14MulSGD/momentum/readtraining/SGD/Variable_7/read*
T0*
_output_shapes	
:�
�
training/SGD/mul_15MulSGD/lr/read<training/SGD/gradients/block5_conv1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
i
training/SGD/sub_7Subtraining/SGD/mul_14training/SGD/mul_15*
T0*
_output_shapes	
:�
�
training/SGD/Assign_14Assigntraining/SGD/Variable_7training/SGD/sub_7*
_output_shapes	
:�**
_class 
loc:@training/SGD/Variable_7*
use_locking(*
validate_shape(*
T0
k
training/SGD/add_7Addblock5_conv1/bias/readtraining/SGD/sub_7*
T0*
_output_shapes	
:�
�
training/SGD/Assign_15Assignblock5_conv1/biastraining/SGD/add_7*
_output_shapes	
:�*$
_class
loc:@block5_conv1/bias*
use_locking(*
validate_shape(*
T0
~
training/SGD/mul_16MulSGD/momentum/readtraining/SGD/Variable_8/read*
T0*(
_output_shapes
:��
�
training/SGD/mul_17MulSGD/lr/readItraining/SGD/gradients/block5_conv2/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:��
v
training/SGD/sub_8Subtraining/SGD/mul_16training/SGD/mul_17*
T0*(
_output_shapes
:��
�
training/SGD/Assign_16Assigntraining/SGD/Variable_8training/SGD/sub_8*(
_output_shapes
:��**
_class 
loc:@training/SGD/Variable_8*
use_locking(*
validate_shape(*
T0
z
training/SGD/add_8Addblock5_conv2/kernel/readtraining/SGD/sub_8*
T0*(
_output_shapes
:��
�
training/SGD/Assign_17Assignblock5_conv2/kerneltraining/SGD/add_8*(
_output_shapes
:��*&
_class
loc:@block5_conv2/kernel*
use_locking(*
validate_shape(*
T0
q
training/SGD/mul_18MulSGD/momentum/readtraining/SGD/Variable_9/read*
T0*
_output_shapes	
:�
�
training/SGD/mul_19MulSGD/lr/read<training/SGD/gradients/block5_conv2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
i
training/SGD/sub_9Subtraining/SGD/mul_18training/SGD/mul_19*
T0*
_output_shapes	
:�
�
training/SGD/Assign_18Assigntraining/SGD/Variable_9training/SGD/sub_9*
_output_shapes	
:�**
_class 
loc:@training/SGD/Variable_9*
use_locking(*
validate_shape(*
T0
k
training/SGD/add_9Addblock5_conv2/bias/readtraining/SGD/sub_9*
T0*
_output_shapes	
:�
�
training/SGD/Assign_19Assignblock5_conv2/biastraining/SGD/add_9*
_output_shapes	
:�*$
_class
loc:@block5_conv2/bias*
use_locking(*
validate_shape(*
T0

training/SGD/mul_20MulSGD/momentum/readtraining/SGD/Variable_10/read*
T0*(
_output_shapes
:��
�
training/SGD/mul_21MulSGD/lr/readItraining/SGD/gradients/block5_conv3/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:��
w
training/SGD/sub_10Subtraining/SGD/mul_20training/SGD/mul_21*
T0*(
_output_shapes
:��
�
training/SGD/Assign_20Assigntraining/SGD/Variable_10training/SGD/sub_10*(
_output_shapes
:��*+
_class!
loc:@training/SGD/Variable_10*
use_locking(*
validate_shape(*
T0
|
training/SGD/add_10Addblock5_conv3/kernel/readtraining/SGD/sub_10*
T0*(
_output_shapes
:��
�
training/SGD/Assign_21Assignblock5_conv3/kerneltraining/SGD/add_10*(
_output_shapes
:��*&
_class
loc:@block5_conv3/kernel*
use_locking(*
validate_shape(*
T0
r
training/SGD/mul_22MulSGD/momentum/readtraining/SGD/Variable_11/read*
T0*
_output_shapes	
:�
�
training/SGD/mul_23MulSGD/lr/read<training/SGD/gradients/block5_conv3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
j
training/SGD/sub_11Subtraining/SGD/mul_22training/SGD/mul_23*
T0*
_output_shapes	
:�
�
training/SGD/Assign_22Assigntraining/SGD/Variable_11training/SGD/sub_11*
_output_shapes	
:�*+
_class!
loc:@training/SGD/Variable_11*
use_locking(*
validate_shape(*
T0
m
training/SGD/add_11Addblock5_conv3/bias/readtraining/SGD/sub_11*
T0*
_output_shapes	
:�
�
training/SGD/Assign_23Assignblock5_conv3/biastraining/SGD/add_11*
_output_shapes	
:�*$
_class
loc:@block5_conv3/bias*
use_locking(*
validate_shape(*
T0
w
training/SGD/mul_24MulSGD/momentum/readtraining/SGD/Variable_12/read*
T0* 
_output_shapes
:
��
�
training/SGD/mul_25MulSGD/lr/read3training/SGD/gradients/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
��
o
training/SGD/sub_12Subtraining/SGD/mul_24training/SGD/mul_25*
T0* 
_output_shapes
:
��
�
training/SGD/Assign_24Assigntraining/SGD/Variable_12training/SGD/sub_12* 
_output_shapes
:
��*+
_class!
loc:@training/SGD/Variable_12*
use_locking(*
validate_shape(*
T0
o
training/SGD/add_12Adddense_1/kernel/readtraining/SGD/sub_12*
T0* 
_output_shapes
:
��
�
training/SGD/Assign_25Assigndense_1/kerneltraining/SGD/add_12* 
_output_shapes
:
��*!
_class
loc:@dense_1/kernel*
use_locking(*
validate_shape(*
T0
r
training/SGD/mul_26MulSGD/momentum/readtraining/SGD/Variable_13/read*
T0*
_output_shapes	
:�
�
training/SGD/mul_27MulSGD/lr/read7training/SGD/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
j
training/SGD/sub_13Subtraining/SGD/mul_26training/SGD/mul_27*
T0*
_output_shapes	
:�
�
training/SGD/Assign_26Assigntraining/SGD/Variable_13training/SGD/sub_13*
_output_shapes	
:�*+
_class!
loc:@training/SGD/Variable_13*
use_locking(*
validate_shape(*
T0
h
training/SGD/add_13Adddense_1/bias/readtraining/SGD/sub_13*
T0*
_output_shapes	
:�
�
training/SGD/Assign_27Assigndense_1/biastraining/SGD/add_13*
_output_shapes	
:�*
_class
loc:@dense_1/bias*
use_locking(*
validate_shape(*
T0
v
training/SGD/mul_28MulSGD/momentum/readtraining/SGD/Variable_14/read*
T0*
_output_shapes
:	�
�
training/SGD/mul_29MulSGD/lr/read3training/SGD/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�
n
training/SGD/sub_14Subtraining/SGD/mul_28training/SGD/mul_29*
T0*
_output_shapes
:	�
�
training/SGD/Assign_28Assigntraining/SGD/Variable_14training/SGD/sub_14*
_output_shapes
:	�*+
_class!
loc:@training/SGD/Variable_14*
use_locking(*
validate_shape(*
T0
n
training/SGD/add_14Adddense_2/kernel/readtraining/SGD/sub_14*
T0*
_output_shapes
:	�
�
training/SGD/Assign_29Assigndense_2/kerneltraining/SGD/add_14*
_output_shapes
:	�*!
_class
loc:@dense_2/kernel*
use_locking(*
validate_shape(*
T0
q
training/SGD/mul_30MulSGD/momentum/readtraining/SGD/Variable_15/read*
T0*
_output_shapes
:
�
training/SGD/mul_31MulSGD/lr/read7training/SGD/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_15Subtraining/SGD/mul_30training/SGD/mul_31*
T0*
_output_shapes
:
�
training/SGD/Assign_30Assigntraining/SGD/Variable_15training/SGD/sub_15*
_output_shapes
:*+
_class!
loc:@training/SGD/Variable_15*
use_locking(*
validate_shape(*
T0
g
training/SGD/add_15Adddense_2/bias/readtraining/SGD/sub_15*
T0*
_output_shapes
:
�
training/SGD/Assign_31Assigndense_2/biastraining/SGD/add_15*
_output_shapes
:*
_class
loc:@dense_2/bias*
use_locking(*
validate_shape(*
T0
�
training/group_depsNoOp	^loss/mul^metrics/acc/Mean_1^training/SGD/AssignAdd^training/SGD/Assign^training/SGD/Assign_1^training/SGD/Assign_2^training/SGD/Assign_3^training/SGD/Assign_4^training/SGD/Assign_5^training/SGD/Assign_6^training/SGD/Assign_7^training/SGD/Assign_8^training/SGD/Assign_9^training/SGD/Assign_10^training/SGD/Assign_11^training/SGD/Assign_12^training/SGD/Assign_13^training/SGD/Assign_14^training/SGD/Assign_15^training/SGD/Assign_16^training/SGD/Assign_17^training/SGD/Assign_18^training/SGD/Assign_19^training/SGD/Assign_20^training/SGD/Assign_21^training/SGD/Assign_22^training/SGD/Assign_23^training/SGD/Assign_24^training/SGD/Assign_25^training/SGD/Assign_26^training/SGD/Assign_27^training/SGD/Assign_28^training/SGD/Assign_29^training/SGD/Assign_30^training/SGD/Assign_31
2

group_depsNoOp	^loss/mul^metrics/acc/Mean_1
�
IsVariableInitialized_26IsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_27IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_28IsVariableInitializeddense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_29IsVariableInitializeddense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_30IsVariableInitializedSGD/iterations*!
_class
loc:@SGD/iterations*
dtype0	*
_output_shapes
: 
y
IsVariableInitialized_31IsVariableInitializedSGD/lr*
_class
loc:@SGD/lr*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_32IsVariableInitializedSGD/momentum*
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 

IsVariableInitialized_33IsVariableInitialized	SGD/decay*
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_34IsVariableInitializedtraining/SGD/Variable*(
_class
loc:@training/SGD/Variable*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_35IsVariableInitializedtraining/SGD/Variable_1**
_class 
loc:@training/SGD/Variable_1*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_36IsVariableInitializedtraining/SGD/Variable_2**
_class 
loc:@training/SGD/Variable_2*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_37IsVariableInitializedtraining/SGD/Variable_3**
_class 
loc:@training/SGD/Variable_3*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_38IsVariableInitializedtraining/SGD/Variable_4**
_class 
loc:@training/SGD/Variable_4*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_39IsVariableInitializedtraining/SGD/Variable_5**
_class 
loc:@training/SGD/Variable_5*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_40IsVariableInitializedtraining/SGD/Variable_6**
_class 
loc:@training/SGD/Variable_6*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_41IsVariableInitializedtraining/SGD/Variable_7**
_class 
loc:@training/SGD/Variable_7*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_42IsVariableInitializedtraining/SGD/Variable_8**
_class 
loc:@training/SGD/Variable_8*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_43IsVariableInitializedtraining/SGD/Variable_9**
_class 
loc:@training/SGD/Variable_9*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_44IsVariableInitializedtraining/SGD/Variable_10*+
_class!
loc:@training/SGD/Variable_10*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_45IsVariableInitializedtraining/SGD/Variable_11*+
_class!
loc:@training/SGD/Variable_11*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_46IsVariableInitializedtraining/SGD/Variable_12*+
_class!
loc:@training/SGD/Variable_12*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_47IsVariableInitializedtraining/SGD/Variable_13*+
_class!
loc:@training/SGD/Variable_13*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_48IsVariableInitializedtraining/SGD/Variable_14*+
_class!
loc:@training/SGD/Variable_14*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_49IsVariableInitializedtraining/SGD/Variable_15*+
_class!
loc:@training/SGD/Variable_15*
dtype0*
_output_shapes
: 
�
init_1NoOp^dense_1/kernel/Assign^dense_1/bias/Assign^dense_2/kernel/Assign^dense_2/bias/Assign^SGD/iterations/Assign^SGD/lr/Assign^SGD/momentum/Assign^SGD/decay/Assign^training/SGD/Variable/Assign^training/SGD/Variable_1/Assign^training/SGD/Variable_2/Assign^training/SGD/Variable_3/Assign^training/SGD/Variable_4/Assign^training/SGD/Variable_5/Assign^training/SGD/Variable_6/Assign^training/SGD/Variable_7/Assign^training/SGD/Variable_8/Assign^training/SGD/Variable_9/Assign ^training/SGD/Variable_10/Assign ^training/SGD/Variable_11/Assign ^training/SGD/Variable_12/Assign ^training/SGD/Variable_13/Assign ^training/SGD/Variable_14/Assign ^training/SGD/Variable_15/Assign"��x�ٱ     J�fk	N��J���AJ��

�&�&
9
Add
x"T
y"T
z"T"
Ttype:
2	
T
AddN
inputs"T*N
sum"T"
Nint(0"
Ttype:
2	��
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
p
	AssignAdd
ref"T�

value"T

output_ref"T�"
Ttype:
2	"
use_lockingbool( 
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
{
BiasAddGrad
out_backprop"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
�
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
A
Equal
x"T
y"T
z
"
Ttype:
2	
�
+
Exp
x"T
y"T"
Ttype:	
2
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype�
is_initialized
"
dtypetype�
<
	LessEqual
x"T
y"T
z
"
Ttype:
2		
+
Log
x"T
y"T"
Ttype:	
2
-
Log1p
x"T
y"T"
Ttype:	
2
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
�
MaxPool

input"T
output"T"
Ttype0:
2
	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2		
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
:
Minimum
x"T
y"T
z"T"
Ttype:	
2	�
<
Mul
x"T
y"T
z"T"
Ttype:
2	�
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
D
NotEqual
x"T
y"T
z
"
Ttype:
2	
�
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
4

Reciprocal
x"T
y"T"
Ttype:
	2	
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
/
Round
x"T
y"T"
Ttype:
	2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
/
Sigmoid
x"T
y"T"
Ttype:	
2
<
SigmoidGrad
y"T
dy"T
z"T"
Ttype:	
2
9
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype*1.4.02v1.4.0-rc1-11-g130a514��	
�
input_1Placeholder*6
shape-:+���������������������������*
dtype0*A
_output_shapes/
-:+���������������������������
z
!block1_conv1/random_uniform/shapeConst*%
valueB"         @   *
dtype0*
_output_shapes
:
d
block1_conv1/random_uniform/minConst*
valueB
 *8J̽*
dtype0*
_output_shapes
: 
d
block1_conv1/random_uniform/maxConst*
valueB
 *8J�=*
dtype0*
_output_shapes
: 
�
)block1_conv1/random_uniform/RandomUniformRandomUniform!block1_conv1/random_uniform/shape*
dtype0*
T0*&
_output_shapes
:@*
seed2���*
seed���)
�
block1_conv1/random_uniform/subSubblock1_conv1/random_uniform/maxblock1_conv1/random_uniform/min*
T0*
_output_shapes
: 
�
block1_conv1/random_uniform/mulMul)block1_conv1/random_uniform/RandomUniformblock1_conv1/random_uniform/sub*
T0*&
_output_shapes
:@
�
block1_conv1/random_uniformAddblock1_conv1/random_uniform/mulblock1_conv1/random_uniform/min*
T0*&
_output_shapes
:@
�
block1_conv1/kernel
VariableV2*
dtype0*
shape:@*&
_output_shapes
:@*
	container *
shared_name 
�
block1_conv1/kernel/AssignAssignblock1_conv1/kernelblock1_conv1/random_uniform*&
_class
loc:@block1_conv1/kernel*
use_locking(*&
_output_shapes
:@*
T0*
validate_shape(
�
block1_conv1/kernel/readIdentityblock1_conv1/kernel*&
_class
loc:@block1_conv1/kernel*
T0*&
_output_shapes
:@
_
block1_conv1/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
}
block1_conv1/bias
VariableV2*
dtype0*
shape:@*
_output_shapes
:@*
	container *
shared_name 
�
block1_conv1/bias/AssignAssignblock1_conv1/biasblock1_conv1/Const*$
_class
loc:@block1_conv1/bias*
use_locking(*
_output_shapes
:@*
T0*
validate_shape(
�
block1_conv1/bias/readIdentityblock1_conv1/bias*$
_class
loc:@block1_conv1/bias*
T0*
_output_shapes
:@
w
&block1_conv1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block1_conv1/convolutionConv2Dinput_1block1_conv1/kernel/read*A
_output_shapes/
-:+���������������������������@*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(*
strides

�
block1_conv1/BiasAddBiasAddblock1_conv1/convolutionblock1_conv1/bias/read*
data_formatNHWC*
T0*A
_output_shapes/
-:+���������������������������@
{
block1_conv1/ReluRelublock1_conv1/BiasAdd*
T0*A
_output_shapes/
-:+���������������������������@
z
!block1_conv2/random_uniform/shapeConst*%
valueB"      @   @   *
dtype0*
_output_shapes
:
d
block1_conv2/random_uniform/minConst*
valueB
 *:͓�*
dtype0*
_output_shapes
: 
d
block1_conv2/random_uniform/maxConst*
valueB
 *:͓=*
dtype0*
_output_shapes
: 
�
)block1_conv2/random_uniform/RandomUniformRandomUniform!block1_conv2/random_uniform/shape*
dtype0*
T0*&
_output_shapes
:@@*
seed2���*
seed���)
�
block1_conv2/random_uniform/subSubblock1_conv2/random_uniform/maxblock1_conv2/random_uniform/min*
T0*
_output_shapes
: 
�
block1_conv2/random_uniform/mulMul)block1_conv2/random_uniform/RandomUniformblock1_conv2/random_uniform/sub*
T0*&
_output_shapes
:@@
�
block1_conv2/random_uniformAddblock1_conv2/random_uniform/mulblock1_conv2/random_uniform/min*
T0*&
_output_shapes
:@@
�
block1_conv2/kernel
VariableV2*
dtype0*
shape:@@*&
_output_shapes
:@@*
	container *
shared_name 
�
block1_conv2/kernel/AssignAssignblock1_conv2/kernelblock1_conv2/random_uniform*&
_class
loc:@block1_conv2/kernel*
use_locking(*&
_output_shapes
:@@*
T0*
validate_shape(
�
block1_conv2/kernel/readIdentityblock1_conv2/kernel*&
_class
loc:@block1_conv2/kernel*
T0*&
_output_shapes
:@@
_
block1_conv2/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
}
block1_conv2/bias
VariableV2*
dtype0*
shape:@*
_output_shapes
:@*
	container *
shared_name 
�
block1_conv2/bias/AssignAssignblock1_conv2/biasblock1_conv2/Const*$
_class
loc:@block1_conv2/bias*
use_locking(*
_output_shapes
:@*
T0*
validate_shape(
�
block1_conv2/bias/readIdentityblock1_conv2/bias*$
_class
loc:@block1_conv2/bias*
T0*
_output_shapes
:@
w
&block1_conv2/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block1_conv2/convolutionConv2Dblock1_conv1/Relublock1_conv2/kernel/read*A
_output_shapes/
-:+���������������������������@*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(*
strides

�
block1_conv2/BiasAddBiasAddblock1_conv2/convolutionblock1_conv2/bias/read*
data_formatNHWC*
T0*A
_output_shapes/
-:+���������������������������@
{
block1_conv2/ReluRelublock1_conv2/BiasAdd*
T0*A
_output_shapes/
-:+���������������������������@
�
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu*
data_formatNHWC*
T0*
strides
*
paddingVALID*
ksize
*A
_output_shapes/
-:+���������������������������@
z
!block2_conv1/random_uniform/shapeConst*%
valueB"      @   �   *
dtype0*
_output_shapes
:
d
block2_conv1/random_uniform/minConst*
valueB
 *�[q�*
dtype0*
_output_shapes
: 
d
block2_conv1/random_uniform/maxConst*
valueB
 *�[q=*
dtype0*
_output_shapes
: 
�
)block2_conv1/random_uniform/RandomUniformRandomUniform!block2_conv1/random_uniform/shape*
dtype0*
T0*'
_output_shapes
:@�*
seed2��
*
seed���)
�
block2_conv1/random_uniform/subSubblock2_conv1/random_uniform/maxblock2_conv1/random_uniform/min*
T0*
_output_shapes
: 
�
block2_conv1/random_uniform/mulMul)block2_conv1/random_uniform/RandomUniformblock2_conv1/random_uniform/sub*
T0*'
_output_shapes
:@�
�
block2_conv1/random_uniformAddblock2_conv1/random_uniform/mulblock2_conv1/random_uniform/min*
T0*'
_output_shapes
:@�
�
block2_conv1/kernel
VariableV2*
dtype0*
shape:@�*'
_output_shapes
:@�*
	container *
shared_name 
�
block2_conv1/kernel/AssignAssignblock2_conv1/kernelblock2_conv1/random_uniform*&
_class
loc:@block2_conv1/kernel*
use_locking(*'
_output_shapes
:@�*
T0*
validate_shape(
�
block2_conv1/kernel/readIdentityblock2_conv1/kernel*&
_class
loc:@block2_conv1/kernel*
T0*'
_output_shapes
:@�
a
block2_conv1/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block2_conv1/bias
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
block2_conv1/bias/AssignAssignblock2_conv1/biasblock2_conv1/Const*$
_class
loc:@block2_conv1/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
�
block2_conv1/bias/readIdentityblock2_conv1/bias*$
_class
loc:@block2_conv1/bias*
T0*
_output_shapes	
:�
w
&block2_conv1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block2_conv1/convolutionConv2Dblock1_pool/MaxPoolblock2_conv1/kernel/read*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(*
strides

�
block2_conv1/BiasAddBiasAddblock2_conv1/convolutionblock2_conv1/bias/read*
data_formatNHWC*
T0*B
_output_shapes0
.:,����������������������������
|
block2_conv1/ReluRelublock2_conv1/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
z
!block2_conv2/random_uniform/shapeConst*%
valueB"      �   �   *
dtype0*
_output_shapes
:
d
block2_conv2/random_uniform/minConst*
valueB
 *�Q�*
dtype0*
_output_shapes
: 
d
block2_conv2/random_uniform/maxConst*
valueB
 *�Q=*
dtype0*
_output_shapes
: 
�
)block2_conv2/random_uniform/RandomUniformRandomUniform!block2_conv2/random_uniform/shape*
dtype0*
T0*(
_output_shapes
:��*
seed2�Ë*
seed���)
�
block2_conv2/random_uniform/subSubblock2_conv2/random_uniform/maxblock2_conv2/random_uniform/min*
T0*
_output_shapes
: 
�
block2_conv2/random_uniform/mulMul)block2_conv2/random_uniform/RandomUniformblock2_conv2/random_uniform/sub*
T0*(
_output_shapes
:��
�
block2_conv2/random_uniformAddblock2_conv2/random_uniform/mulblock2_conv2/random_uniform/min*
T0*(
_output_shapes
:��
�
block2_conv2/kernel
VariableV2*
dtype0*
shape:��*(
_output_shapes
:��*
	container *
shared_name 
�
block2_conv2/kernel/AssignAssignblock2_conv2/kernelblock2_conv2/random_uniform*&
_class
loc:@block2_conv2/kernel*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
�
block2_conv2/kernel/readIdentityblock2_conv2/kernel*&
_class
loc:@block2_conv2/kernel*
T0*(
_output_shapes
:��
a
block2_conv2/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block2_conv2/bias
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
block2_conv2/bias/AssignAssignblock2_conv2/biasblock2_conv2/Const*$
_class
loc:@block2_conv2/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
�
block2_conv2/bias/readIdentityblock2_conv2/bias*$
_class
loc:@block2_conv2/bias*
T0*
_output_shapes	
:�
w
&block2_conv2/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block2_conv2/convolutionConv2Dblock2_conv1/Relublock2_conv2/kernel/read*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(*
strides

�
block2_conv2/BiasAddBiasAddblock2_conv2/convolutionblock2_conv2/bias/read*
data_formatNHWC*
T0*B
_output_shapes0
.:,����������������������������
|
block2_conv2/ReluRelublock2_conv2/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
�
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu*
data_formatNHWC*
T0*
strides
*
paddingVALID*
ksize
*B
_output_shapes0
.:,����������������������������
z
!block3_conv1/random_uniform/shapeConst*%
valueB"      �      *
dtype0*
_output_shapes
:
d
block3_conv1/random_uniform/minConst*
valueB
 *��*�*
dtype0*
_output_shapes
: 
d
block3_conv1/random_uniform/maxConst*
valueB
 *��*=*
dtype0*
_output_shapes
: 
�
)block3_conv1/random_uniform/RandomUniformRandomUniform!block3_conv1/random_uniform/shape*
dtype0*
T0*(
_output_shapes
:��*
seed2ĩ�*
seed���)
�
block3_conv1/random_uniform/subSubblock3_conv1/random_uniform/maxblock3_conv1/random_uniform/min*
T0*
_output_shapes
: 
�
block3_conv1/random_uniform/mulMul)block3_conv1/random_uniform/RandomUniformblock3_conv1/random_uniform/sub*
T0*(
_output_shapes
:��
�
block3_conv1/random_uniformAddblock3_conv1/random_uniform/mulblock3_conv1/random_uniform/min*
T0*(
_output_shapes
:��
�
block3_conv1/kernel
VariableV2*
dtype0*
shape:��*(
_output_shapes
:��*
	container *
shared_name 
�
block3_conv1/kernel/AssignAssignblock3_conv1/kernelblock3_conv1/random_uniform*&
_class
loc:@block3_conv1/kernel*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
�
block3_conv1/kernel/readIdentityblock3_conv1/kernel*&
_class
loc:@block3_conv1/kernel*
T0*(
_output_shapes
:��
a
block3_conv1/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block3_conv1/bias
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
block3_conv1/bias/AssignAssignblock3_conv1/biasblock3_conv1/Const*$
_class
loc:@block3_conv1/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
�
block3_conv1/bias/readIdentityblock3_conv1/bias*$
_class
loc:@block3_conv1/bias*
T0*
_output_shapes	
:�
w
&block3_conv1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block3_conv1/convolutionConv2Dblock2_pool/MaxPoolblock3_conv1/kernel/read*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(*
strides

�
block3_conv1/BiasAddBiasAddblock3_conv1/convolutionblock3_conv1/bias/read*
data_formatNHWC*
T0*B
_output_shapes0
.:,����������������������������
|
block3_conv1/ReluRelublock3_conv1/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
z
!block3_conv2/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
d
block3_conv2/random_uniform/minConst*
valueB
 *:��*
dtype0*
_output_shapes
: 
d
block3_conv2/random_uniform/maxConst*
valueB
 *:�=*
dtype0*
_output_shapes
: 
�
)block3_conv2/random_uniform/RandomUniformRandomUniform!block3_conv2/random_uniform/shape*
dtype0*
T0*(
_output_shapes
:��*
seed2�?*
seed���)
�
block3_conv2/random_uniform/subSubblock3_conv2/random_uniform/maxblock3_conv2/random_uniform/min*
T0*
_output_shapes
: 
�
block3_conv2/random_uniform/mulMul)block3_conv2/random_uniform/RandomUniformblock3_conv2/random_uniform/sub*
T0*(
_output_shapes
:��
�
block3_conv2/random_uniformAddblock3_conv2/random_uniform/mulblock3_conv2/random_uniform/min*
T0*(
_output_shapes
:��
�
block3_conv2/kernel
VariableV2*
dtype0*
shape:��*(
_output_shapes
:��*
	container *
shared_name 
�
block3_conv2/kernel/AssignAssignblock3_conv2/kernelblock3_conv2/random_uniform*&
_class
loc:@block3_conv2/kernel*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
�
block3_conv2/kernel/readIdentityblock3_conv2/kernel*&
_class
loc:@block3_conv2/kernel*
T0*(
_output_shapes
:��
a
block3_conv2/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block3_conv2/bias
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
block3_conv2/bias/AssignAssignblock3_conv2/biasblock3_conv2/Const*$
_class
loc:@block3_conv2/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
�
block3_conv2/bias/readIdentityblock3_conv2/bias*$
_class
loc:@block3_conv2/bias*
T0*
_output_shapes	
:�
w
&block3_conv2/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block3_conv2/convolutionConv2Dblock3_conv1/Relublock3_conv2/kernel/read*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(*
strides

�
block3_conv2/BiasAddBiasAddblock3_conv2/convolutionblock3_conv2/bias/read*
data_formatNHWC*
T0*B
_output_shapes0
.:,����������������������������
|
block3_conv2/ReluRelublock3_conv2/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
z
!block3_conv3/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
d
block3_conv3/random_uniform/minConst*
valueB
 *:��*
dtype0*
_output_shapes
: 
d
block3_conv3/random_uniform/maxConst*
valueB
 *:�=*
dtype0*
_output_shapes
: 
�
)block3_conv3/random_uniform/RandomUniformRandomUniform!block3_conv3/random_uniform/shape*
dtype0*
T0*(
_output_shapes
:��*
seed2���*
seed���)
�
block3_conv3/random_uniform/subSubblock3_conv3/random_uniform/maxblock3_conv3/random_uniform/min*
T0*
_output_shapes
: 
�
block3_conv3/random_uniform/mulMul)block3_conv3/random_uniform/RandomUniformblock3_conv3/random_uniform/sub*
T0*(
_output_shapes
:��
�
block3_conv3/random_uniformAddblock3_conv3/random_uniform/mulblock3_conv3/random_uniform/min*
T0*(
_output_shapes
:��
�
block3_conv3/kernel
VariableV2*
dtype0*
shape:��*(
_output_shapes
:��*
	container *
shared_name 
�
block3_conv3/kernel/AssignAssignblock3_conv3/kernelblock3_conv3/random_uniform*&
_class
loc:@block3_conv3/kernel*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
�
block3_conv3/kernel/readIdentityblock3_conv3/kernel*&
_class
loc:@block3_conv3/kernel*
T0*(
_output_shapes
:��
a
block3_conv3/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block3_conv3/bias
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
block3_conv3/bias/AssignAssignblock3_conv3/biasblock3_conv3/Const*$
_class
loc:@block3_conv3/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
�
block3_conv3/bias/readIdentityblock3_conv3/bias*$
_class
loc:@block3_conv3/bias*
T0*
_output_shapes	
:�
w
&block3_conv3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block3_conv3/convolutionConv2Dblock3_conv2/Relublock3_conv3/kernel/read*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(*
strides

�
block3_conv3/BiasAddBiasAddblock3_conv3/convolutionblock3_conv3/bias/read*
data_formatNHWC*
T0*B
_output_shapes0
.:,����������������������������
|
block3_conv3/ReluRelublock3_conv3/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
�
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu*
data_formatNHWC*
T0*
strides
*
paddingVALID*
ksize
*B
_output_shapes0
.:,����������������������������
z
!block4_conv1/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
d
block4_conv1/random_uniform/minConst*
valueB
 *�[�*
dtype0*
_output_shapes
: 
d
block4_conv1/random_uniform/maxConst*
valueB
 *�[�<*
dtype0*
_output_shapes
: 
�
)block4_conv1/random_uniform/RandomUniformRandomUniform!block4_conv1/random_uniform/shape*
dtype0*
T0*(
_output_shapes
:��*
seed2���*
seed���)
�
block4_conv1/random_uniform/subSubblock4_conv1/random_uniform/maxblock4_conv1/random_uniform/min*
T0*
_output_shapes
: 
�
block4_conv1/random_uniform/mulMul)block4_conv1/random_uniform/RandomUniformblock4_conv1/random_uniform/sub*
T0*(
_output_shapes
:��
�
block4_conv1/random_uniformAddblock4_conv1/random_uniform/mulblock4_conv1/random_uniform/min*
T0*(
_output_shapes
:��
�
block4_conv1/kernel
VariableV2*
dtype0*
shape:��*(
_output_shapes
:��*
	container *
shared_name 
�
block4_conv1/kernel/AssignAssignblock4_conv1/kernelblock4_conv1/random_uniform*&
_class
loc:@block4_conv1/kernel*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
�
block4_conv1/kernel/readIdentityblock4_conv1/kernel*&
_class
loc:@block4_conv1/kernel*
T0*(
_output_shapes
:��
a
block4_conv1/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block4_conv1/bias
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
block4_conv1/bias/AssignAssignblock4_conv1/biasblock4_conv1/Const*$
_class
loc:@block4_conv1/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
�
block4_conv1/bias/readIdentityblock4_conv1/bias*$
_class
loc:@block4_conv1/bias*
T0*
_output_shapes	
:�
w
&block4_conv1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block4_conv1/convolutionConv2Dblock3_pool/MaxPoolblock4_conv1/kernel/read*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(*
strides

�
block4_conv1/BiasAddBiasAddblock4_conv1/convolutionblock4_conv1/bias/read*
data_formatNHWC*
T0*B
_output_shapes0
.:,����������������������������
|
block4_conv1/ReluRelublock4_conv1/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
z
!block4_conv2/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
d
block4_conv2/random_uniform/minConst*
valueB
 *�Ѽ*
dtype0*
_output_shapes
: 
d
block4_conv2/random_uniform/maxConst*
valueB
 *��<*
dtype0*
_output_shapes
: 
�
)block4_conv2/random_uniform/RandomUniformRandomUniform!block4_conv2/random_uniform/shape*
dtype0*
T0*(
_output_shapes
:��*
seed2��*
seed���)
�
block4_conv2/random_uniform/subSubblock4_conv2/random_uniform/maxblock4_conv2/random_uniform/min*
T0*
_output_shapes
: 
�
block4_conv2/random_uniform/mulMul)block4_conv2/random_uniform/RandomUniformblock4_conv2/random_uniform/sub*
T0*(
_output_shapes
:��
�
block4_conv2/random_uniformAddblock4_conv2/random_uniform/mulblock4_conv2/random_uniform/min*
T0*(
_output_shapes
:��
�
block4_conv2/kernel
VariableV2*
dtype0*
shape:��*(
_output_shapes
:��*
	container *
shared_name 
�
block4_conv2/kernel/AssignAssignblock4_conv2/kernelblock4_conv2/random_uniform*&
_class
loc:@block4_conv2/kernel*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
�
block4_conv2/kernel/readIdentityblock4_conv2/kernel*&
_class
loc:@block4_conv2/kernel*
T0*(
_output_shapes
:��
a
block4_conv2/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block4_conv2/bias
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
block4_conv2/bias/AssignAssignblock4_conv2/biasblock4_conv2/Const*$
_class
loc:@block4_conv2/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
�
block4_conv2/bias/readIdentityblock4_conv2/bias*$
_class
loc:@block4_conv2/bias*
T0*
_output_shapes	
:�
w
&block4_conv2/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block4_conv2/convolutionConv2Dblock4_conv1/Relublock4_conv2/kernel/read*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(*
strides

�
block4_conv2/BiasAddBiasAddblock4_conv2/convolutionblock4_conv2/bias/read*
data_formatNHWC*
T0*B
_output_shapes0
.:,����������������������������
|
block4_conv2/ReluRelublock4_conv2/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
z
!block4_conv3/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
d
block4_conv3/random_uniform/minConst*
valueB
 *�Ѽ*
dtype0*
_output_shapes
: 
d
block4_conv3/random_uniform/maxConst*
valueB
 *��<*
dtype0*
_output_shapes
: 
�
)block4_conv3/random_uniform/RandomUniformRandomUniform!block4_conv3/random_uniform/shape*
dtype0*
T0*(
_output_shapes
:��*
seed2��*
seed���)
�
block4_conv3/random_uniform/subSubblock4_conv3/random_uniform/maxblock4_conv3/random_uniform/min*
T0*
_output_shapes
: 
�
block4_conv3/random_uniform/mulMul)block4_conv3/random_uniform/RandomUniformblock4_conv3/random_uniform/sub*
T0*(
_output_shapes
:��
�
block4_conv3/random_uniformAddblock4_conv3/random_uniform/mulblock4_conv3/random_uniform/min*
T0*(
_output_shapes
:��
�
block4_conv3/kernel
VariableV2*
dtype0*
shape:��*(
_output_shapes
:��*
	container *
shared_name 
�
block4_conv3/kernel/AssignAssignblock4_conv3/kernelblock4_conv3/random_uniform*&
_class
loc:@block4_conv3/kernel*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
�
block4_conv3/kernel/readIdentityblock4_conv3/kernel*&
_class
loc:@block4_conv3/kernel*
T0*(
_output_shapes
:��
a
block4_conv3/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block4_conv3/bias
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
block4_conv3/bias/AssignAssignblock4_conv3/biasblock4_conv3/Const*$
_class
loc:@block4_conv3/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
�
block4_conv3/bias/readIdentityblock4_conv3/bias*$
_class
loc:@block4_conv3/bias*
T0*
_output_shapes	
:�
w
&block4_conv3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block4_conv3/convolutionConv2Dblock4_conv2/Relublock4_conv3/kernel/read*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(*
strides

�
block4_conv3/BiasAddBiasAddblock4_conv3/convolutionblock4_conv3/bias/read*
data_formatNHWC*
T0*B
_output_shapes0
.:,����������������������������
|
block4_conv3/ReluRelublock4_conv3/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
�
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu*
data_formatNHWC*
T0*
strides
*
paddingVALID*
ksize
*B
_output_shapes0
.:,����������������������������
z
!block5_conv1/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
d
block5_conv1/random_uniform/minConst*
valueB
 *�Ѽ*
dtype0*
_output_shapes
: 
d
block5_conv1/random_uniform/maxConst*
valueB
 *��<*
dtype0*
_output_shapes
: 
�
)block5_conv1/random_uniform/RandomUniformRandomUniform!block5_conv1/random_uniform/shape*
dtype0*
T0*(
_output_shapes
:��*
seed2�ޟ*
seed���)
�
block5_conv1/random_uniform/subSubblock5_conv1/random_uniform/maxblock5_conv1/random_uniform/min*
T0*
_output_shapes
: 
�
block5_conv1/random_uniform/mulMul)block5_conv1/random_uniform/RandomUniformblock5_conv1/random_uniform/sub*
T0*(
_output_shapes
:��
�
block5_conv1/random_uniformAddblock5_conv1/random_uniform/mulblock5_conv1/random_uniform/min*
T0*(
_output_shapes
:��
�
block5_conv1/kernel
VariableV2*
dtype0*
shape:��*(
_output_shapes
:��*
	container *
shared_name 
�
block5_conv1/kernel/AssignAssignblock5_conv1/kernelblock5_conv1/random_uniform*&
_class
loc:@block5_conv1/kernel*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
�
block5_conv1/kernel/readIdentityblock5_conv1/kernel*&
_class
loc:@block5_conv1/kernel*
T0*(
_output_shapes
:��
a
block5_conv1/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block5_conv1/bias
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
block5_conv1/bias/AssignAssignblock5_conv1/biasblock5_conv1/Const*$
_class
loc:@block5_conv1/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
�
block5_conv1/bias/readIdentityblock5_conv1/bias*$
_class
loc:@block5_conv1/bias*
T0*
_output_shapes	
:�
w
&block5_conv1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block5_conv1/convolutionConv2Dblock4_pool/MaxPoolblock5_conv1/kernel/read*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(*
strides

�
block5_conv1/BiasAddBiasAddblock5_conv1/convolutionblock5_conv1/bias/read*
data_formatNHWC*
T0*B
_output_shapes0
.:,����������������������������
|
block5_conv1/ReluRelublock5_conv1/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
z
!block5_conv2/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
d
block5_conv2/random_uniform/minConst*
valueB
 *�Ѽ*
dtype0*
_output_shapes
: 
d
block5_conv2/random_uniform/maxConst*
valueB
 *��<*
dtype0*
_output_shapes
: 
�
)block5_conv2/random_uniform/RandomUniformRandomUniform!block5_conv2/random_uniform/shape*
dtype0*
T0*(
_output_shapes
:��*
seed2䴴*
seed���)
�
block5_conv2/random_uniform/subSubblock5_conv2/random_uniform/maxblock5_conv2/random_uniform/min*
T0*
_output_shapes
: 
�
block5_conv2/random_uniform/mulMul)block5_conv2/random_uniform/RandomUniformblock5_conv2/random_uniform/sub*
T0*(
_output_shapes
:��
�
block5_conv2/random_uniformAddblock5_conv2/random_uniform/mulblock5_conv2/random_uniform/min*
T0*(
_output_shapes
:��
�
block5_conv2/kernel
VariableV2*
dtype0*
shape:��*(
_output_shapes
:��*
	container *
shared_name 
�
block5_conv2/kernel/AssignAssignblock5_conv2/kernelblock5_conv2/random_uniform*&
_class
loc:@block5_conv2/kernel*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
�
block5_conv2/kernel/readIdentityblock5_conv2/kernel*&
_class
loc:@block5_conv2/kernel*
T0*(
_output_shapes
:��
a
block5_conv2/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block5_conv2/bias
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
block5_conv2/bias/AssignAssignblock5_conv2/biasblock5_conv2/Const*$
_class
loc:@block5_conv2/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
�
block5_conv2/bias/readIdentityblock5_conv2/bias*$
_class
loc:@block5_conv2/bias*
T0*
_output_shapes	
:�
w
&block5_conv2/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block5_conv2/convolutionConv2Dblock5_conv1/Relublock5_conv2/kernel/read*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(*
strides

�
block5_conv2/BiasAddBiasAddblock5_conv2/convolutionblock5_conv2/bias/read*
data_formatNHWC*
T0*B
_output_shapes0
.:,����������������������������
|
block5_conv2/ReluRelublock5_conv2/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
z
!block5_conv3/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
d
block5_conv3/random_uniform/minConst*
valueB
 *�Ѽ*
dtype0*
_output_shapes
: 
d
block5_conv3/random_uniform/maxConst*
valueB
 *��<*
dtype0*
_output_shapes
: 
�
)block5_conv3/random_uniform/RandomUniformRandomUniform!block5_conv3/random_uniform/shape*
dtype0*
T0*(
_output_shapes
:��*
seed2���*
seed���)
�
block5_conv3/random_uniform/subSubblock5_conv3/random_uniform/maxblock5_conv3/random_uniform/min*
T0*
_output_shapes
: 
�
block5_conv3/random_uniform/mulMul)block5_conv3/random_uniform/RandomUniformblock5_conv3/random_uniform/sub*
T0*(
_output_shapes
:��
�
block5_conv3/random_uniformAddblock5_conv3/random_uniform/mulblock5_conv3/random_uniform/min*
T0*(
_output_shapes
:��
�
block5_conv3/kernel
VariableV2*
dtype0*
shape:��*(
_output_shapes
:��*
	container *
shared_name 
�
block5_conv3/kernel/AssignAssignblock5_conv3/kernelblock5_conv3/random_uniform*&
_class
loc:@block5_conv3/kernel*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
�
block5_conv3/kernel/readIdentityblock5_conv3/kernel*&
_class
loc:@block5_conv3/kernel*
T0*(
_output_shapes
:��
a
block5_conv3/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�

block5_conv3/bias
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
block5_conv3/bias/AssignAssignblock5_conv3/biasblock5_conv3/Const*$
_class
loc:@block5_conv3/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
�
block5_conv3/bias/readIdentityblock5_conv3/bias*$
_class
loc:@block5_conv3/bias*
T0*
_output_shapes	
:�
w
&block5_conv3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
block5_conv3/convolutionConv2Dblock5_conv2/Relublock5_conv3/kernel/read*B
_output_shapes0
.:,����������������������������*
paddingSAME*
T0*
data_formatNHWC*
use_cudnn_on_gpu(*
strides

�
block5_conv3/BiasAddBiasAddblock5_conv3/convolutionblock5_conv3/bias/read*
data_formatNHWC*
T0*B
_output_shapes0
.:,����������������������������
|
block5_conv3/ReluRelublock5_conv3/BiasAdd*
T0*B
_output_shapes0
.:,����������������������������
�
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu*
data_formatNHWC*
T0*
strides
*
paddingVALID*
ksize
*B
_output_shapes0
.:,����������������������������
l
PlaceholderPlaceholder*
shape:@*
dtype0*&
_output_shapes
:@
�
AssignAssignblock1_conv1/kernelPlaceholder*&
_class
loc:@block1_conv1/kernel*
use_locking( *&
_output_shapes
:@*
T0*
validate_shape(
V
Placeholder_1Placeholder*
shape:@*
dtype0*
_output_shapes
:@
�
Assign_1Assignblock1_conv1/biasPlaceholder_1*$
_class
loc:@block1_conv1/bias*
use_locking( *
_output_shapes
:@*
T0*
validate_shape(
n
Placeholder_2Placeholder*
shape:@@*
dtype0*&
_output_shapes
:@@
�
Assign_2Assignblock1_conv2/kernelPlaceholder_2*&
_class
loc:@block1_conv2/kernel*
use_locking( *&
_output_shapes
:@@*
T0*
validate_shape(
V
Placeholder_3Placeholder*
shape:@*
dtype0*
_output_shapes
:@
�
Assign_3Assignblock1_conv2/biasPlaceholder_3*$
_class
loc:@block1_conv2/bias*
use_locking( *
_output_shapes
:@*
T0*
validate_shape(
p
Placeholder_4Placeholder*
shape:@�*
dtype0*'
_output_shapes
:@�
�
Assign_4Assignblock2_conv1/kernelPlaceholder_4*&
_class
loc:@block2_conv1/kernel*
use_locking( *'
_output_shapes
:@�*
T0*
validate_shape(
X
Placeholder_5Placeholder*
shape:�*
dtype0*
_output_shapes	
:�
�
Assign_5Assignblock2_conv1/biasPlaceholder_5*$
_class
loc:@block2_conv1/bias*
use_locking( *
_output_shapes	
:�*
T0*
validate_shape(
r
Placeholder_6Placeholder*
shape:��*
dtype0*(
_output_shapes
:��
�
Assign_6Assignblock2_conv2/kernelPlaceholder_6*&
_class
loc:@block2_conv2/kernel*
use_locking( *(
_output_shapes
:��*
T0*
validate_shape(
X
Placeholder_7Placeholder*
shape:�*
dtype0*
_output_shapes	
:�
�
Assign_7Assignblock2_conv2/biasPlaceholder_7*$
_class
loc:@block2_conv2/bias*
use_locking( *
_output_shapes	
:�*
T0*
validate_shape(
r
Placeholder_8Placeholder*
shape:��*
dtype0*(
_output_shapes
:��
�
Assign_8Assignblock3_conv1/kernelPlaceholder_8*&
_class
loc:@block3_conv1/kernel*
use_locking( *(
_output_shapes
:��*
T0*
validate_shape(
X
Placeholder_9Placeholder*
shape:�*
dtype0*
_output_shapes	
:�
�
Assign_9Assignblock3_conv1/biasPlaceholder_9*$
_class
loc:@block3_conv1/bias*
use_locking( *
_output_shapes	
:�*
T0*
validate_shape(
s
Placeholder_10Placeholder*
shape:��*
dtype0*(
_output_shapes
:��
�
	Assign_10Assignblock3_conv2/kernelPlaceholder_10*&
_class
loc:@block3_conv2/kernel*
use_locking( *(
_output_shapes
:��*
T0*
validate_shape(
Y
Placeholder_11Placeholder*
shape:�*
dtype0*
_output_shapes	
:�
�
	Assign_11Assignblock3_conv2/biasPlaceholder_11*$
_class
loc:@block3_conv2/bias*
use_locking( *
_output_shapes	
:�*
T0*
validate_shape(
s
Placeholder_12Placeholder*
shape:��*
dtype0*(
_output_shapes
:��
�
	Assign_12Assignblock3_conv3/kernelPlaceholder_12*&
_class
loc:@block3_conv3/kernel*
use_locking( *(
_output_shapes
:��*
T0*
validate_shape(
Y
Placeholder_13Placeholder*
shape:�*
dtype0*
_output_shapes	
:�
�
	Assign_13Assignblock3_conv3/biasPlaceholder_13*$
_class
loc:@block3_conv3/bias*
use_locking( *
_output_shapes	
:�*
T0*
validate_shape(
s
Placeholder_14Placeholder*
shape:��*
dtype0*(
_output_shapes
:��
�
	Assign_14Assignblock4_conv1/kernelPlaceholder_14*&
_class
loc:@block4_conv1/kernel*
use_locking( *(
_output_shapes
:��*
T0*
validate_shape(
Y
Placeholder_15Placeholder*
shape:�*
dtype0*
_output_shapes	
:�
�
	Assign_15Assignblock4_conv1/biasPlaceholder_15*$
_class
loc:@block4_conv1/bias*
use_locking( *
_output_shapes	
:�*
T0*
validate_shape(
s
Placeholder_16Placeholder*
shape:��*
dtype0*(
_output_shapes
:��
�
	Assign_16Assignblock4_conv2/kernelPlaceholder_16*&
_class
loc:@block4_conv2/kernel*
use_locking( *(
_output_shapes
:��*
T0*
validate_shape(
Y
Placeholder_17Placeholder*
shape:�*
dtype0*
_output_shapes	
:�
�
	Assign_17Assignblock4_conv2/biasPlaceholder_17*$
_class
loc:@block4_conv2/bias*
use_locking( *
_output_shapes	
:�*
T0*
validate_shape(
s
Placeholder_18Placeholder*
shape:��*
dtype0*(
_output_shapes
:��
�
	Assign_18Assignblock4_conv3/kernelPlaceholder_18*&
_class
loc:@block4_conv3/kernel*
use_locking( *(
_output_shapes
:��*
T0*
validate_shape(
Y
Placeholder_19Placeholder*
shape:�*
dtype0*
_output_shapes	
:�
�
	Assign_19Assignblock4_conv3/biasPlaceholder_19*$
_class
loc:@block4_conv3/bias*
use_locking( *
_output_shapes	
:�*
T0*
validate_shape(
s
Placeholder_20Placeholder*
shape:��*
dtype0*(
_output_shapes
:��
�
	Assign_20Assignblock5_conv1/kernelPlaceholder_20*&
_class
loc:@block5_conv1/kernel*
use_locking( *(
_output_shapes
:��*
T0*
validate_shape(
Y
Placeholder_21Placeholder*
shape:�*
dtype0*
_output_shapes	
:�
�
	Assign_21Assignblock5_conv1/biasPlaceholder_21*$
_class
loc:@block5_conv1/bias*
use_locking( *
_output_shapes	
:�*
T0*
validate_shape(
s
Placeholder_22Placeholder*
shape:��*
dtype0*(
_output_shapes
:��
�
	Assign_22Assignblock5_conv2/kernelPlaceholder_22*&
_class
loc:@block5_conv2/kernel*
use_locking( *(
_output_shapes
:��*
T0*
validate_shape(
Y
Placeholder_23Placeholder*
shape:�*
dtype0*
_output_shapes	
:�
�
	Assign_23Assignblock5_conv2/biasPlaceholder_23*$
_class
loc:@block5_conv2/bias*
use_locking( *
_output_shapes	
:�*
T0*
validate_shape(
s
Placeholder_24Placeholder*
shape:��*
dtype0*(
_output_shapes
:��
�
	Assign_24Assignblock5_conv3/kernelPlaceholder_24*&
_class
loc:@block5_conv3/kernel*
use_locking( *(
_output_shapes
:��*
T0*
validate_shape(
Y
Placeholder_25Placeholder*
shape:�*
dtype0*
_output_shapes	
:�
�
	Assign_25Assignblock5_conv3/biasPlaceholder_25*$
_class
loc:@block5_conv3/bias*
use_locking( *
_output_shapes	
:�*
T0*
validate_shape(
�
IsVariableInitializedIsVariableInitializedblock1_conv1/kernel*&
_class
loc:@block1_conv1/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_1IsVariableInitializedblock1_conv1/bias*$
_class
loc:@block1_conv1/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_2IsVariableInitializedblock1_conv2/kernel*&
_class
loc:@block1_conv2/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_3IsVariableInitializedblock1_conv2/bias*$
_class
loc:@block1_conv2/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_4IsVariableInitializedblock2_conv1/kernel*&
_class
loc:@block2_conv1/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_5IsVariableInitializedblock2_conv1/bias*$
_class
loc:@block2_conv1/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_6IsVariableInitializedblock2_conv2/kernel*&
_class
loc:@block2_conv2/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_7IsVariableInitializedblock2_conv2/bias*$
_class
loc:@block2_conv2/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_8IsVariableInitializedblock3_conv1/kernel*&
_class
loc:@block3_conv1/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_9IsVariableInitializedblock3_conv1/bias*$
_class
loc:@block3_conv1/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_10IsVariableInitializedblock3_conv2/kernel*&
_class
loc:@block3_conv2/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_11IsVariableInitializedblock3_conv2/bias*$
_class
loc:@block3_conv2/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_12IsVariableInitializedblock3_conv3/kernel*&
_class
loc:@block3_conv3/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_13IsVariableInitializedblock3_conv3/bias*$
_class
loc:@block3_conv3/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_14IsVariableInitializedblock4_conv1/kernel*&
_class
loc:@block4_conv1/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_15IsVariableInitializedblock4_conv1/bias*$
_class
loc:@block4_conv1/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_16IsVariableInitializedblock4_conv2/kernel*&
_class
loc:@block4_conv2/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_17IsVariableInitializedblock4_conv2/bias*$
_class
loc:@block4_conv2/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_18IsVariableInitializedblock4_conv3/kernel*&
_class
loc:@block4_conv3/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_19IsVariableInitializedblock4_conv3/bias*$
_class
loc:@block4_conv3/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_20IsVariableInitializedblock5_conv1/kernel*&
_class
loc:@block5_conv1/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_21IsVariableInitializedblock5_conv1/bias*$
_class
loc:@block5_conv1/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_22IsVariableInitializedblock5_conv2/kernel*&
_class
loc:@block5_conv2/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_23IsVariableInitializedblock5_conv2/bias*$
_class
loc:@block5_conv2/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_24IsVariableInitializedblock5_conv3/kernel*&
_class
loc:@block5_conv3/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_25IsVariableInitializedblock5_conv3/bias*$
_class
loc:@block5_conv3/bias*
dtype0*
_output_shapes
: 
�
initNoOp^block1_conv1/kernel/Assign^block1_conv1/bias/Assign^block1_conv2/kernel/Assign^block1_conv2/bias/Assign^block2_conv1/kernel/Assign^block2_conv1/bias/Assign^block2_conv2/kernel/Assign^block2_conv2/bias/Assign^block3_conv1/kernel/Assign^block3_conv1/bias/Assign^block3_conv2/kernel/Assign^block3_conv2/bias/Assign^block3_conv3/kernel/Assign^block3_conv3/bias/Assign^block4_conv1/kernel/Assign^block4_conv1/bias/Assign^block4_conv2/kernel/Assign^block4_conv2/bias/Assign^block4_conv3/kernel/Assign^block4_conv3/bias/Assign^block5_conv1/kernel/Assign^block5_conv1/bias/Assign^block5_conv2/kernel/Assign^block5_conv2/bias/Assign^block5_conv3/kernel/Assign^block5_conv3/bias/Assign
�
1global_average_pooling2d_1/Mean/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
�
global_average_pooling2d_1/MeanMeanblock5_pool/MaxPool1global_average_pooling2d_1/Mean/reduction_indices*
	keep_dims( *
T0*(
_output_shapes
:����������*

Tidx0
m
dense_1/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
valueB
 *  ��*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
valueB
 *  �=*
dtype0*
_output_shapes
: 
�
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
dtype0*
T0* 
_output_shapes
:
��*
seed2���*
seed���)
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 
�
dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0* 
_output_shapes
:
��
�
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0* 
_output_shapes
:
��
�
dense_1/kernel
VariableV2*
dtype0*
shape:
��* 
_output_shapes
:
��*
	container *
shared_name 
�
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*!
_class
loc:@dense_1/kernel*
use_locking(* 
_output_shapes
:
��*
T0*
validate_shape(
}
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:
��
\
dense_1/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�
z
dense_1/bias
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
_class
loc:@dense_1/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
r
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
T0*
_output_shapes	
:�
�
dense_1/MatMulMatMulglobal_average_pooling2d_1/Meandense_1/kernel/read*
transpose_b( *
T0*(
_output_shapes
:����������*
transpose_a( 
�
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:����������
X
dense_1/ReluReludense_1/BiasAdd*
T0*(
_output_shapes
:����������
m
dense_2/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
dense_2/random_uniform/minConst*
valueB
 *ܰ��*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
valueB
 *ܰ�=*
dtype0*
_output_shapes
: 
�
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
dtype0*
T0*
_output_shapes
:	�*
seed2���*
seed���)
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 
�
dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
T0*
_output_shapes
:	�

dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes
:	�
�
dense_2/kernel
VariableV2*
dtype0*
shape:	�*
_output_shapes
:	�*
	container *
shared_name 
�
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*!
_class
loc:@dense_2/kernel*
use_locking(*
_output_shapes
:	�*
T0*
validate_shape(
|
dense_2/kernel/readIdentitydense_2/kernel*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes
:	�
Z
dense_2/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_2/bias
VariableV2*
dtype0*
shape:*
_output_shapes
:*
	container *
shared_name 
�
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
_class
loc:@dense_2/bias*
use_locking(*
_output_shapes
:*
T0*
validate_shape(
q
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
T0*
_output_shapes
:
�
dense_2/MatMulMatMuldense_1/Reludense_2/kernel/read*
transpose_b( *
T0*'
_output_shapes
:���������*
transpose_a( 
�
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:���������
]
dense_2/SigmoidSigmoiddense_2/BiasAdd*
T0*'
_output_shapes
:���������
^
SGD/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
r
SGD/iterations
VariableV2*
dtype0	*
shape: *
_output_shapes
: *
	container *
shared_name 
�
SGD/iterations/AssignAssignSGD/iterationsSGD/iterations/initial_value*!
_class
loc:@SGD/iterations*
use_locking(*
_output_shapes
: *
T0	*
validate_shape(
s
SGD/iterations/readIdentitySGD/iterations*!
_class
loc:@SGD/iterations*
T0	*
_output_shapes
: 
Y
SGD/lr/initial_valueConst*
valueB
 *��'7*
dtype0*
_output_shapes
: 
j
SGD/lr
VariableV2*
dtype0*
shape: *
_output_shapes
: *
	container *
shared_name 
�
SGD/lr/AssignAssignSGD/lrSGD/lr/initial_value*
_class
loc:@SGD/lr*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
[
SGD/lr/readIdentitySGD/lr*
_class
loc:@SGD/lr*
T0*
_output_shapes
: 
_
SGD/momentum/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
p
SGD/momentum
VariableV2*
dtype0*
shape: *
_output_shapes
: *
	container *
shared_name 
�
SGD/momentum/AssignAssignSGD/momentumSGD/momentum/initial_value*
_class
loc:@SGD/momentum*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
m
SGD/momentum/readIdentitySGD/momentum*
_class
loc:@SGD/momentum*
T0*
_output_shapes
: 
\
SGD/decay/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
	SGD/decay
VariableV2*
dtype0*
shape: *
_output_shapes
: *
	container *
shared_name 
�
SGD/decay/AssignAssign	SGD/decaySGD/decay/initial_value*
_class
loc:@SGD/decay*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
d
SGD/decay/readIdentity	SGD/decay*
_class
loc:@SGD/decay*
T0*
_output_shapes
: 
�
dense_2_targetPlaceholder*%
shape:������������������*
dtype0*0
_output_shapes
:������������������
q
dense_2_sample_weightsPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
\
loss/dense_2_loss/ConstConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
\
loss/dense_2_loss/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
o
loss/dense_2_loss/subSubloss/dense_2_loss/sub/xloss/dense_2_loss/Const*
T0*
_output_shapes
: 
�
'loss/dense_2_loss/clip_by_value/MinimumMinimumdense_2/Sigmoidloss/dense_2_loss/sub*
T0*'
_output_shapes
:���������
�
loss/dense_2_loss/clip_by_valueMaximum'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*
T0*'
_output_shapes
:���������
^
loss/dense_2_loss/sub_1/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
loss/dense_2_loss/sub_1Subloss/dense_2_loss/sub_1/xloss/dense_2_loss/clip_by_value*
T0*'
_output_shapes
:���������
�
loss/dense_2_loss/truedivRealDivloss/dense_2_loss/clip_by_valueloss/dense_2_loss/sub_1*
T0*'
_output_shapes
:���������
i
loss/dense_2_loss/LogLogloss/dense_2_loss/truediv*
T0*'
_output_shapes
:���������
�
*loss/dense_2_loss/logistic_loss/zeros_like	ZerosLikeloss/dense_2_loss/Log*
T0*'
_output_shapes
:���������
�
,loss/dense_2_loss/logistic_loss/GreaterEqualGreaterEqualloss/dense_2_loss/Log*loss/dense_2_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:���������
�
&loss/dense_2_loss/logistic_loss/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualloss/dense_2_loss/Log*loss/dense_2_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:���������
s
#loss/dense_2_loss/logistic_loss/NegNegloss/dense_2_loss/Log*
T0*'
_output_shapes
:���������
�
(loss/dense_2_loss/logistic_loss/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqual#loss/dense_2_loss/logistic_loss/Negloss/dense_2_loss/Log*
T0*'
_output_shapes
:���������
�
#loss/dense_2_loss/logistic_loss/mulMulloss/dense_2_loss/Logdense_2_target*
T0*0
_output_shapes
:������������������
�
#loss/dense_2_loss/logistic_loss/subSub&loss/dense_2_loss/logistic_loss/Select#loss/dense_2_loss/logistic_loss/mul*
T0*0
_output_shapes
:������������������
�
#loss/dense_2_loss/logistic_loss/ExpExp(loss/dense_2_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:���������
�
%loss/dense_2_loss/logistic_loss/Log1pLog1p#loss/dense_2_loss/logistic_loss/Exp*
T0*'
_output_shapes
:���������
�
loss/dense_2_loss/logistic_lossAdd#loss/dense_2_loss/logistic_loss/sub%loss/dense_2_loss/logistic_loss/Log1p*
T0*0
_output_shapes
:������������������
s
(loss/dense_2_loss/Mean/reduction_indicesConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
loss/dense_2_loss/MeanMeanloss/dense_2_loss/logistic_loss(loss/dense_2_loss/Mean/reduction_indices*
	keep_dims( *
T0*#
_output_shapes
:���������*

Tidx0
m
*loss/dense_2_loss/Mean_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
�
loss/dense_2_loss/Mean_1Meanloss/dense_2_loss/Mean*loss/dense_2_loss/Mean_1/reduction_indices*
	keep_dims( *
T0*#
_output_shapes
:���������*

Tidx0
|
loss/dense_2_loss/mulMulloss/dense_2_loss/Mean_1dense_2_sample_weights*
T0*#
_output_shapes
:���������
a
loss/dense_2_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
loss/dense_2_loss/NotEqualNotEqualdense_2_sample_weightsloss/dense_2_loss/NotEqual/y*
T0*#
_output_shapes
:���������
w
loss/dense_2_loss/CastCastloss/dense_2_loss/NotEqual*

DstT0*#
_output_shapes
:���������*

SrcT0

c
loss/dense_2_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
loss/dense_2_loss/Mean_2Meanloss/dense_2_loss/Castloss/dense_2_loss/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
�
loss/dense_2_loss/truediv_1RealDivloss/dense_2_loss/mulloss/dense_2_loss/Mean_2*
T0*#
_output_shapes
:���������
c
loss/dense_2_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
�
loss/dense_2_loss/Mean_3Meanloss/dense_2_loss/truediv_1loss/dense_2_loss/Const_2*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
O

loss/mul/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_2_loss/Mean_3*
T0*
_output_shapes
: 
]
metrics/acc/RoundRounddense_2/Sigmoid*
T0*'
_output_shapes
:���������
x
metrics/acc/EqualEqualdense_2_targetmetrics/acc/Round*
T0*0
_output_shapes
:������������������
u
metrics/acc/CastCastmetrics/acc/Equal*

DstT0*0
_output_shapes
:������������������*

SrcT0

m
"metrics/acc/Mean/reduction_indicesConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
metrics/acc/MeanMeanmetrics/acc/Cast"metrics/acc/Mean/reduction_indices*
	keep_dims( *
T0*#
_output_shapes
:���������*

Tidx0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
}
metrics/acc/Mean_1Meanmetrics/acc/Meanmetrics/acc/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
|
training/SGD/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: *
_class
loc:@loss/mul
~
training/SGD/gradients/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: *
_class
loc:@loss/mul
�
training/SGD/gradients/FillFilltraining/SGD/gradients/Shapetraining/SGD/gradients/Const*
_class
loc:@loss/mul*
T0*
_output_shapes
: 
�
*training/SGD/gradients/loss/mul_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: *
_class
loc:@loss/mul
�
,training/SGD/gradients/loss/mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *
_class
loc:@loss/mul
�
:training/SGD/gradients/loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs*training/SGD/gradients/loss/mul_grad/Shape,training/SGD/gradients/loss/mul_grad/Shape_1*
_class
loc:@loss/mul*
T0*2
_output_shapes 
:���������:���������
�
(training/SGD/gradients/loss/mul_grad/mulMultraining/SGD/gradients/Fillloss/dense_2_loss/Mean_3*
_class
loc:@loss/mul*
T0*
_output_shapes
: 
�
(training/SGD/gradients/loss/mul_grad/SumSum(training/SGD/gradients/loss/mul_grad/mul:training/SGD/gradients/loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *
_class
loc:@loss/mul*
T0*
_output_shapes
:*

Tidx0
�
,training/SGD/gradients/loss/mul_grad/ReshapeReshape(training/SGD/gradients/loss/mul_grad/Sum*training/SGD/gradients/loss/mul_grad/Shape*
_class
loc:@loss/mul*
T0*
Tshape0*
_output_shapes
: 
�
*training/SGD/gradients/loss/mul_grad/mul_1Mul
loss/mul/xtraining/SGD/gradients/Fill*
_class
loc:@loss/mul*
T0*
_output_shapes
: 
�
*training/SGD/gradients/loss/mul_grad/Sum_1Sum*training/SGD/gradients/loss/mul_grad/mul_1<training/SGD/gradients/loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
_class
loc:@loss/mul*
T0*
_output_shapes
:*

Tidx0
�
.training/SGD/gradients/loss/mul_grad/Reshape_1Reshape*training/SGD/gradients/loss/mul_grad/Sum_1,training/SGD/gradients/loss/mul_grad/Shape_1*
_class
loc:@loss/mul*
T0*
Tshape0*
_output_shapes
: 
�
Btraining/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_3
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/ReshapeReshape.training/SGD/gradients/loss/mul_grad/Reshape_1Btraining/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Reshape/shape*+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*
Tshape0*
_output_shapes
:
�
:training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/ShapeShapeloss/dense_2_loss/truediv_1*+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*
_output_shapes
:*
out_type0
�
9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/TileTile<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Reshape:training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������*+
_class!
loc:@loss/dense_2_loss/Mean_3
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape_1Shapeloss/dense_2_loss/truediv_1*+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*
_output_shapes
:*
out_type0
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_3
�
:training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_3
�
9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/ProdProd<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape_1:training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Const*
	keep_dims( *+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*
_output_shapes
: *

Tidx0
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_3
�
;training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Prod_1Prod<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape_2<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Const_1*
	keep_dims( *+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*
_output_shapes
: *

Tidx0
�
>training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_3
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/MaximumMaximum;training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Prod_1>training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Maximum/y*+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*
_output_shapes
: 
�
=training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/floordivFloorDiv9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Prod<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Maximum*+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*
_output_shapes
: 
�
9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/CastCast=training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/floordiv*+
_class!
loc:@loss/dense_2_loss/Mean_3*

DstT0*
_output_shapes
: *

SrcT0
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/truedivRealDiv9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Tile9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Cast*+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*#
_output_shapes
:���������
�
=training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/ShapeShapeloss/dense_2_loss/mul*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*
_output_shapes
:*
out_type0
�
?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *.
_class$
" loc:@loss/dense_2_loss/truediv_1
�
Mtraining/SGD/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs=training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Shape?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*2
_output_shapes 
:���������:���������
�
?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/RealDivRealDiv<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/truedivloss/dense_2_loss/Mean_2*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*#
_output_shapes
:���������
�
;training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/SumSum?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/RealDivMtraining/SGD/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs*
	keep_dims( *.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*
_output_shapes
:*

Tidx0
�
?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/ReshapeReshape;training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Sum=training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Shape*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*
Tshape0*#
_output_shapes
:���������
�
;training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/NegNegloss/dense_2_loss/mul*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*#
_output_shapes
:���������
�
Atraining/SGD/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1RealDiv;training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Negloss/dense_2_loss/Mean_2*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*#
_output_shapes
:���������
�
Atraining/SGD/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2RealDivAtraining/SGD/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1loss/dense_2_loss/Mean_2*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*#
_output_shapes
:���������
�
;training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/mulMul<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/truedivAtraining/SGD/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*#
_output_shapes
:���������
�
=training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1Sum;training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/mulOtraining/SGD/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs:1*
	keep_dims( *.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*
_output_shapes
:*

Tidx0
�
Atraining/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Reshape_1Reshape=training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*
Tshape0*
_output_shapes
: 
�
7training/SGD/gradients/loss/dense_2_loss/mul_grad/ShapeShapeloss/dense_2_loss/Mean_1*(
_class
loc:@loss/dense_2_loss/mul*
T0*
_output_shapes
:*
out_type0
�
9training/SGD/gradients/loss/dense_2_loss/mul_grad/Shape_1Shapedense_2_sample_weights*(
_class
loc:@loss/dense_2_loss/mul*
T0*
_output_shapes
:*
out_type0
�
Gtraining/SGD/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs7training/SGD/gradients/loss/dense_2_loss/mul_grad/Shape9training/SGD/gradients/loss/dense_2_loss/mul_grad/Shape_1*(
_class
loc:@loss/dense_2_loss/mul*
T0*2
_output_shapes 
:���������:���������
�
5training/SGD/gradients/loss/dense_2_loss/mul_grad/mulMul?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Reshapedense_2_sample_weights*(
_class
loc:@loss/dense_2_loss/mul*
T0*#
_output_shapes
:���������
�
5training/SGD/gradients/loss/dense_2_loss/mul_grad/SumSum5training/SGD/gradients/loss/dense_2_loss/mul_grad/mulGtraining/SGD/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *(
_class
loc:@loss/dense_2_loss/mul*
T0*
_output_shapes
:*

Tidx0
�
9training/SGD/gradients/loss/dense_2_loss/mul_grad/ReshapeReshape5training/SGD/gradients/loss/dense_2_loss/mul_grad/Sum7training/SGD/gradients/loss/dense_2_loss/mul_grad/Shape*(
_class
loc:@loss/dense_2_loss/mul*
T0*
Tshape0*#
_output_shapes
:���������
�
7training/SGD/gradients/loss/dense_2_loss/mul_grad/mul_1Mulloss/dense_2_loss/Mean_1?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Reshape*(
_class
loc:@loss/dense_2_loss/mul*
T0*#
_output_shapes
:���������
�
7training/SGD/gradients/loss/dense_2_loss/mul_grad/Sum_1Sum7training/SGD/gradients/loss/dense_2_loss/mul_grad/mul_1Itraining/SGD/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *(
_class
loc:@loss/dense_2_loss/mul*
T0*
_output_shapes
:*

Tidx0
�
;training/SGD/gradients/loss/dense_2_loss/mul_grad/Reshape_1Reshape7training/SGD/gradients/loss/dense_2_loss/mul_grad/Sum_19training/SGD/gradients/loss/dense_2_loss/mul_grad/Shape_1*(
_class
loc:@loss/dense_2_loss/mul*
T0*
Tshape0*#
_output_shapes
:���������
�
:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/ShapeShapeloss/dense_2_loss/Mean*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
:*
out_type0
�
9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_1
�
8training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/addAdd*loss/dense_2_loss/Mean_1/reduction_indices9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Size*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
: 
�
8training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/modFloorMod8training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/add9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Size*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
: 
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_1Const*
valueB: *
dtype0*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_1
�
@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_1
�
:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/rangeRange@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range/start9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Size@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range/delta*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
:*

Tidx0
�
?training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_1
�
9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/FillFill<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_1?training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Fill/value*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
: 
�
Btraining/SGD/gradients/loss/dense_2_loss/Mean_1_grad/DynamicStitchDynamicStitch:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range8training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/mod:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Fill*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
N*#
_output_shapes
:���������
�
>training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_1
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/MaximumMaximumBtraining/SGD/gradients/loss/dense_2_loss/Mean_1_grad/DynamicStitch>training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Maximum/y*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*#
_output_shapes
:���������
�
=training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/floordivFloorDiv:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Maximum*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*#
_output_shapes
:���������
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/ReshapeReshape9training/SGD/gradients/loss/dense_2_loss/mul_grad/ReshapeBtraining/SGD/gradients/loss/dense_2_loss/Mean_1_grad/DynamicStitch*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
Tshape0*
_output_shapes
:
�
9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/TileTile<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Reshape=training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/floordiv*

Tmultiples0*
T0*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_2Shapeloss/dense_2_loss/Mean*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
:*
out_type0
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_3Shapeloss/dense_2_loss/Mean_1*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
:*
out_type0
�
:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/ProdProd<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_2:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Const*
	keep_dims( *+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
: *

Tidx0
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
;training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Prod_1Prod<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_3<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Const_1*
	keep_dims( *+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
: *

Tidx0
�
@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_1
�
>training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1Maximum;training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Prod_1@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1/y*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
: 
�
?training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/floordiv_1FloorDiv9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Prod>training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
: 
�
9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/CastCast?training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/floordiv_1*+
_class!
loc:@loss/dense_2_loss/Mean_1*

DstT0*
_output_shapes
: *

SrcT0
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/truedivRealDiv9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Tile9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Cast*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*#
_output_shapes
:���������
�
8training/SGD/gradients/loss/dense_2_loss/Mean_grad/ShapeShapeloss/dense_2_loss/logistic_loss*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
:*
out_type0
�
7training/SGD/gradients/loss/dense_2_loss/Mean_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean
�
6training/SGD/gradients/loss/dense_2_loss/Mean_grad/addAdd(loss/dense_2_loss/Mean/reduction_indices7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Size*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
: 
�
6training/SGD/gradients/loss/dense_2_loss/Mean_grad/modFloorMod6training/SGD/gradients/loss/dense_2_loss/Mean_grad/add7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Size*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
: 
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean
�
>training/SGD/gradients/loss/dense_2_loss/Mean_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean
�
>training/SGD/gradients/loss/dense_2_loss/Mean_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean
�
8training/SGD/gradients/loss/dense_2_loss/Mean_grad/rangeRange>training/SGD/gradients/loss/dense_2_loss/Mean_grad/range/start7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Size>training/SGD/gradients/loss/dense_2_loss/Mean_grad/range/delta*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:*

Tidx0
�
=training/SGD/gradients/loss/dense_2_loss/Mean_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean
�
7training/SGD/gradients/loss/dense_2_loss/Mean_grad/FillFill:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_1=training/SGD/gradients/loss/dense_2_loss/Mean_grad/Fill/value*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
: 
�
@training/SGD/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchDynamicStitch8training/SGD/gradients/loss/dense_2_loss/Mean_grad/range6training/SGD/gradients/loss/dense_2_loss/Mean_grad/mod8training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Fill*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
N*#
_output_shapes
:���������
�
<training/SGD/gradients/loss/dense_2_loss/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/MaximumMaximum@training/SGD/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch<training/SGD/gradients/loss/dense_2_loss/Mean_grad/Maximum/y*)
_class
loc:@loss/dense_2_loss/Mean*
T0*#
_output_shapes
:���������
�
;training/SGD/gradients/loss/dense_2_loss/Mean_grad/floordivFloorDiv8training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Maximum*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
:
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/ReshapeReshape<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/truediv@training/SGD/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
Tshape0*
_output_shapes
:
�
7training/SGD/gradients/loss/dense_2_loss/Mean_grad/TileTile:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Reshape;training/SGD/gradients/loss/dense_2_loss/Mean_grad/floordiv*

Tmultiples0*
T0*0
_output_shapes
:������������������*)
_class
loc:@loss/dense_2_loss/Mean
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_2Shapeloss/dense_2_loss/logistic_loss*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
:*
out_type0
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_3Shapeloss/dense_2_loss/Mean*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
:*
out_type0
�
8training/SGD/gradients/loss/dense_2_loss/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:*)
_class
loc:@loss/dense_2_loss/Mean
�
7training/SGD/gradients/loss/dense_2_loss/Mean_grad/ProdProd:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_28training/SGD/gradients/loss/dense_2_loss/Mean_grad/Const*
	keep_dims( *)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
: *

Tidx0
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:*)
_class
loc:@loss/dense_2_loss/Mean
�
9training/SGD/gradients/loss/dense_2_loss/Mean_grad/Prod_1Prod:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_3:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Const_1*
	keep_dims( *)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
: *

Tidx0
�
>training/SGD/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean
�
<training/SGD/gradients/loss/dense_2_loss/Mean_grad/Maximum_1Maximum9training/SGD/gradients/loss/dense_2_loss/Mean_grad/Prod_1>training/SGD/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/y*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
: 
�
=training/SGD/gradients/loss/dense_2_loss/Mean_grad/floordiv_1FloorDiv7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Prod<training/SGD/gradients/loss/dense_2_loss/Mean_grad/Maximum_1*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
: 
�
7training/SGD/gradients/loss/dense_2_loss/Mean_grad/CastCast=training/SGD/gradients/loss/dense_2_loss/Mean_grad/floordiv_1*)
_class
loc:@loss/dense_2_loss/Mean*

DstT0*
_output_shapes
: *

SrcT0
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/truedivRealDiv7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Tile7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Cast*)
_class
loc:@loss/dense_2_loss/Mean*
T0*0
_output_shapes
:������������������
�
Atraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/ShapeShape#loss/dense_2_loss/logistic_loss/sub*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
T0*
_output_shapes
:*
out_type0
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1Shape%loss/dense_2_loss/logistic_loss/Log1p*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
T0*
_output_shapes
:*
out_type0
�
Qtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgsAtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/ShapeCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
T0*2
_output_shapes 
:���������:���������
�
?training/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/SumSum:training/SGD/gradients/loss/dense_2_loss/Mean_grad/truedivQtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgs*
	keep_dims( *2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
T0*
_output_shapes
:*

Tidx0
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeReshape?training/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/SumAtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Shape*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
T0*
Tshape0*0
_output_shapes
:������������������
�
Atraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Sum_1Sum:training/SGD/gradients/loss/dense_2_loss/Mean_grad/truedivStraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgs:1*
	keep_dims( *2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
T0*
_output_shapes
:*

Tidx0
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1ReshapeAtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Sum_1Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
T0*
Tshape0*'
_output_shapes
:���������
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ShapeShape&loss/dense_2_loss/logistic_loss/Select*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
T0*
_output_shapes
:*
out_type0
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1Shape#loss/dense_2_loss/logistic_loss/mul*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
T0*
_output_shapes
:*
out_type0
�
Utraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ShapeGtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
T0*2
_output_shapes 
:���������:���������
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/SumSumCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeUtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgs*
	keep_dims( *6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
T0*
_output_shapes
:*

Tidx0
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ReshapeReshapeCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/SumEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
T0*
Tshape0*'
_output_shapes
:���������
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Sum_1SumCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeWtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
T0*
_output_shapes
:*

Tidx0
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/NegNegEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Sum_1*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
T0*
_output_shapes
:
�
Itraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1ReshapeCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/NegGtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
T0*
Tshape0*0
_output_shapes
:������������������
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add/xConstF^training/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1*
valueB
 *  �?*
dtype0*
_output_shapes
: *8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/addAddGtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add/x#loss/dense_2_loss/logistic_loss/Exp*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*
T0*'
_output_shapes
:���������
�
Ltraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/Reciprocal
ReciprocalEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*
T0*'
_output_shapes
:���������
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/mulMulEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1Ltraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/Reciprocal*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*
T0*'
_output_shapes
:���������
�
Mtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_like	ZerosLikeloss/dense_2_loss/Log*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*
T0*'
_output_shapes
:���������
�
Itraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_grad/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualGtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ReshapeMtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_like*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*
T0*'
_output_shapes
:���������
�
Ktraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_grad/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqualMtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_likeGtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*
T0*'
_output_shapes
:���������
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ShapeShapeloss/dense_2_loss/Log*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*
_output_shapes
:*
out_type0
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1Shapedense_2_target*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*
_output_shapes
:*
out_type0
�
Utraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ShapeGtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*2
_output_shapes 
:���������:���������
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/mulMulItraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1dense_2_target*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*0
_output_shapes
:������������������
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/SumSumCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/mulUtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*
_output_shapes
:*

Tidx0
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ReshapeReshapeCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/SumEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*
Tshape0*'
_output_shapes
:���������
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/mul_1Mulloss/dense_2_loss/LogItraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*0
_output_shapes
:������������������
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Sum_1SumEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/mul_1Wtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*
_output_shapes
:*

Tidx0
�
Itraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Reshape_1ReshapeEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Sum_1Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*
Tshape0*0
_output_shapes
:������������������
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mulMulEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/mul#loss/dense_2_loss/logistic_loss/Exp*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/Exp*
T0*'
_output_shapes
:���������
�
Otraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_like	ZerosLike#loss/dense_2_loss/logistic_loss/Neg*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:���������
�
Ktraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mulOtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_like*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:���������
�
Mtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqualOtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_likeCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mul*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:���������
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Neg_grad/NegNegKtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/Neg*
T0*'
_output_shapes
:���������
�
training/SGD/gradients/AddNAddNItraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_grad/SelectGtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ReshapeMtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select_1Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Neg_grad/Neg*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*
T0*
N*'
_output_shapes
:���������
�
<training/SGD/gradients/loss/dense_2_loss/Log_grad/Reciprocal
Reciprocalloss/dense_2_loss/truediv^training/SGD/gradients/AddN*(
_class
loc:@loss/dense_2_loss/Log*
T0*'
_output_shapes
:���������
�
5training/SGD/gradients/loss/dense_2_loss/Log_grad/mulMultraining/SGD/gradients/AddN<training/SGD/gradients/loss/dense_2_loss/Log_grad/Reciprocal*(
_class
loc:@loss/dense_2_loss/Log*
T0*'
_output_shapes
:���������
�
;training/SGD/gradients/loss/dense_2_loss/truediv_grad/ShapeShapeloss/dense_2_loss/clip_by_value*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*
_output_shapes
:*
out_type0
�
=training/SGD/gradients/loss/dense_2_loss/truediv_grad/Shape_1Shapeloss/dense_2_loss/sub_1*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*
_output_shapes
:*
out_type0
�
Ktraining/SGD/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs;training/SGD/gradients/loss/dense_2_loss/truediv_grad/Shape=training/SGD/gradients/loss/dense_2_loss/truediv_grad/Shape_1*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*2
_output_shapes 
:���������:���������
�
=training/SGD/gradients/loss/dense_2_loss/truediv_grad/RealDivRealDiv5training/SGD/gradients/loss/dense_2_loss/Log_grad/mulloss/dense_2_loss/sub_1*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*'
_output_shapes
:���������
�
9training/SGD/gradients/loss/dense_2_loss/truediv_grad/SumSum=training/SGD/gradients/loss/dense_2_loss/truediv_grad/RealDivKtraining/SGD/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs*
	keep_dims( *,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*
_output_shapes
:*

Tidx0
�
=training/SGD/gradients/loss/dense_2_loss/truediv_grad/ReshapeReshape9training/SGD/gradients/loss/dense_2_loss/truediv_grad/Sum;training/SGD/gradients/loss/dense_2_loss/truediv_grad/Shape*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*
Tshape0*'
_output_shapes
:���������
�
9training/SGD/gradients/loss/dense_2_loss/truediv_grad/NegNegloss/dense_2_loss/clip_by_value*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*'
_output_shapes
:���������
�
?training/SGD/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1RealDiv9training/SGD/gradients/loss/dense_2_loss/truediv_grad/Negloss/dense_2_loss/sub_1*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*'
_output_shapes
:���������
�
?training/SGD/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2RealDiv?training/SGD/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1loss/dense_2_loss/sub_1*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*'
_output_shapes
:���������
�
9training/SGD/gradients/loss/dense_2_loss/truediv_grad/mulMul5training/SGD/gradients/loss/dense_2_loss/Log_grad/mul?training/SGD/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*'
_output_shapes
:���������
�
;training/SGD/gradients/loss/dense_2_loss/truediv_grad/Sum_1Sum9training/SGD/gradients/loss/dense_2_loss/truediv_grad/mulMtraining/SGD/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*
_output_shapes
:*

Tidx0
�
?training/SGD/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Reshape;training/SGD/gradients/loss/dense_2_loss/truediv_grad/Sum_1=training/SGD/gradients/loss/dense_2_loss/truediv_grad/Shape_1*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*
Tshape0*'
_output_shapes
:���������
�
9training/SGD/gradients/loss/dense_2_loss/sub_1_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: **
_class 
loc:@loss/dense_2_loss/sub_1
�
;training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Shape_1Shapeloss/dense_2_loss/clip_by_value**
_class 
loc:@loss/dense_2_loss/sub_1*
T0*
_output_shapes
:*
out_type0
�
Itraining/SGD/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs9training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Shape;training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Shape_1**
_class 
loc:@loss/dense_2_loss/sub_1*
T0*2
_output_shapes 
:���������:���������
�
7training/SGD/gradients/loss/dense_2_loss/sub_1_grad/SumSum?training/SGD/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Itraining/SGD/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgs*
	keep_dims( **
_class 
loc:@loss/dense_2_loss/sub_1*
T0*
_output_shapes
:*

Tidx0
�
;training/SGD/gradients/loss/dense_2_loss/sub_1_grad/ReshapeReshape7training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Sum9training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Shape**
_class 
loc:@loss/dense_2_loss/sub_1*
T0*
Tshape0*
_output_shapes
: 
�
9training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Sum_1Sum?training/SGD/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Ktraining/SGD/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( **
_class 
loc:@loss/dense_2_loss/sub_1*
T0*
_output_shapes
:*

Tidx0
�
7training/SGD/gradients/loss/dense_2_loss/sub_1_grad/NegNeg9training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Sum_1**
_class 
loc:@loss/dense_2_loss/sub_1*
T0*
_output_shapes
:
�
=training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Reshape_1Reshape7training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Neg;training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Shape_1**
_class 
loc:@loss/dense_2_loss/sub_1*
T0*
Tshape0*'
_output_shapes
:���������
�
training/SGD/gradients/AddN_1AddN=training/SGD/gradients/loss/dense_2_loss/truediv_grad/Reshape=training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Reshape_1*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*
N*'
_output_shapes
:���������
�
Atraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeShape'loss/dense_2_loss/clip_by_value/Minimum*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*
_output_shapes
:*
out_type0
�
Ctraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
�
Ctraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Shapetraining/SGD/gradients/AddN_1*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*
_output_shapes
:*
out_type0
�
Gtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
�
Atraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/zerosFillCtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Gtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/Const*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*'
_output_shapes
:���������
�
Htraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*'
_output_shapes
:���������
�
Qtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsAtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeCtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*2
_output_shapes 
:���������:���������
�
Btraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/SelectSelectHtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualtraining/SGD/gradients/AddN_1Atraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/zeros*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*'
_output_shapes
:���������
�
Dtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1SelectHtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualAtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/zerostraining/SGD/gradients/AddN_1*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*'
_output_shapes
:���������
�
?training/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/SumSumBtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/SelectQtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*
_output_shapes
:*

Tidx0
�
Ctraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeReshape?training/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/SumAtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*
Tshape0*'
_output_shapes
:���������
�
Atraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1SumDtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1Straining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*
_output_shapes
:*

Tidx0
�
Etraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_1ReshapeAtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1Ctraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*
Tshape0*
_output_shapes
: 
�
Itraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeShapedense_2/Sigmoid*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*
_output_shapes
:*
out_type0
�
Ktraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
�
Ktraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2ShapeCtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*
_output_shapes
:*
out_type0
�
Otraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
�
Itraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosFillKtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2Otraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/Const*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*'
_output_shapes
:���������
�
Mtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualdense_2/Sigmoidloss/dense_2_loss/sub*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*'
_output_shapes
:���������
�
Ytraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsItraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeKtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*2
_output_shapes 
:���������:���������
�
Jtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectSelectMtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualCtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeItraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*'
_output_shapes
:���������
�
Ltraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1SelectMtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualItraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosCtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*'
_output_shapes
:���������
�
Gtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumSumJtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectYtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*
_output_shapes
:*

Tidx0
�
Ktraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ReshapeReshapeGtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumItraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*
Tshape0*'
_output_shapes
:���������
�
Itraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1SumLtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1[training/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*
_output_shapes
:*

Tidx0
�
Mtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeItraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1Ktraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*
Tshape0*
_output_shapes
: 
�
7training/SGD/gradients/dense_2/Sigmoid_grad/SigmoidGradSigmoidGraddense_2/SigmoidKtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape*"
_class
loc:@dense_2/Sigmoid*
T0*'
_output_shapes
:���������
�
7training/SGD/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad7training/SGD/gradients/dense_2/Sigmoid_grad/SigmoidGrad*"
_class
loc:@dense_2/BiasAdd*
T0*
data_formatNHWC*
_output_shapes
:
�
1training/SGD/gradients/dense_2/MatMul_grad/MatMulMatMul7training/SGD/gradients/dense_2/Sigmoid_grad/SigmoidGraddense_2/kernel/read*
transpose_b(*!
_class
loc:@dense_2/MatMul*
T0*(
_output_shapes
:����������*
transpose_a( 
�
3training/SGD/gradients/dense_2/MatMul_grad/MatMul_1MatMuldense_1/Relu7training/SGD/gradients/dense_2/Sigmoid_grad/SigmoidGrad*
transpose_b( *!
_class
loc:@dense_2/MatMul*
T0*
_output_shapes
:	�*
transpose_a(
�
1training/SGD/gradients/dense_1/Relu_grad/ReluGradReluGrad1training/SGD/gradients/dense_2/MatMul_grad/MatMuldense_1/Relu*
_class
loc:@dense_1/Relu*
T0*(
_output_shapes
:����������
�
7training/SGD/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad1training/SGD/gradients/dense_1/Relu_grad/ReluGrad*"
_class
loc:@dense_1/BiasAdd*
T0*
data_formatNHWC*
_output_shapes	
:�
�
1training/SGD/gradients/dense_1/MatMul_grad/MatMulMatMul1training/SGD/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*
transpose_b(*!
_class
loc:@dense_1/MatMul*
T0*(
_output_shapes
:����������*
transpose_a( 
�
3training/SGD/gradients/dense_1/MatMul_grad/MatMul_1MatMulglobal_average_pooling2d_1/Mean1training/SGD/gradients/dense_1/Relu_grad/ReluGrad*
transpose_b( *!
_class
loc:@dense_1/MatMul*
T0* 
_output_shapes
:
��*
transpose_a(
�
Atraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/ShapeShapeblock5_pool/MaxPool*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:*
out_type0
�
@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: *2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
?training/SGD/gradients/global_average_pooling2d_1/Mean_grad/addAdd1global_average_pooling2d_1/Mean/reduction_indices@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/Size*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:
�
?training/SGD/gradients/global_average_pooling2d_1/Mean_grad/modFloorMod?training/SGD/gradients/global_average_pooling2d_1/Mean_grad/add@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/Size*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:*2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
Gtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: *2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
Gtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: *2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
Atraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/rangeRangeGtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range/start@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/SizeGtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range/delta*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
_output_shapes
:*

Tidx0
�
Ftraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: *2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/FillFillCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_1Ftraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Fill/value*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:
�
Itraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/DynamicStitchDynamicStitchAtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range?training/SGD/gradients/global_average_pooling2d_1/Mean_grad/modAtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/Fill*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
N*#
_output_shapes
:���������
�
Etraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: *2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/MaximumMaximumItraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/DynamicStitchEtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Maximum/y*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*#
_output_shapes
:���������
�
Dtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/floordivFloorDivAtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/ShapeCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Maximum*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/ReshapeReshape1training/SGD/gradients/dense_1/MatMul_grad/MatMulItraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/DynamicStitch*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
Tshape0*
_output_shapes
:
�
@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/TileTileCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/ReshapeDtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/floordiv*

Tmultiples0*
T0*J
_output_shapes8
6:4������������������������������������*2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_2Shapeblock5_pool/MaxPool*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:*
out_type0
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_3Shapeglobal_average_pooling2d_1/Mean*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:*
out_type0
�
Atraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:*2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/ProdProdCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_2Atraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Const*
	keep_dims( *2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
: *

Tidx0
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:*2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
Btraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Prod_1ProdCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_3Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Const_1*
	keep_dims( *2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
: *

Tidx0
�
Gtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: *2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
Etraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Maximum_1MaximumBtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Prod_1Gtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Maximum_1/y*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
: 
�
Ftraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/floordiv_1FloorDiv@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/ProdEtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Maximum_1*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
: 
�
@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/CastCastFtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/floordiv_1*2
_class(
&$loc:@global_average_pooling2d_1/Mean*

DstT0*
_output_shapes
: *

SrcT0
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/truedivRealDiv@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/Tile@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/Cast*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*B
_output_shapes0
.:,����������������������������
�
;training/SGD/gradients/block5_pool/MaxPool_grad/MaxPoolGradMaxPoolGradblock5_conv3/Relublock5_pool/MaxPoolCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/truediv*
data_formatNHWC*&
_class
loc:@block5_pool/MaxPool*
ksize
*
strides
*
paddingVALID*
T0*B
_output_shapes0
.:,����������������������������
�
6training/SGD/gradients/block5_conv3/Relu_grad/ReluGradReluGrad;training/SGD/gradients/block5_pool/MaxPool_grad/MaxPoolGradblock5_conv3/Relu*$
_class
loc:@block5_conv3/Relu*
T0*B
_output_shapes0
.:,����������������������������
�
<training/SGD/gradients/block5_conv3/BiasAdd_grad/BiasAddGradBiasAddGrad6training/SGD/gradients/block5_conv3/Relu_grad/ReluGrad*'
_class
loc:@block5_conv3/BiasAdd*
T0*
data_formatNHWC*
_output_shapes	
:�
�
;training/SGD/gradients/block5_conv3/convolution_grad/ShapeNShapeNblock5_conv2/Relublock5_conv3/kernel/read*+
_class!
loc:@block5_conv3/convolution*
T0*
N* 
_output_shapes
::*
out_type0
�
Htraining/SGD/gradients/block5_conv3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block5_conv3/convolution_grad/ShapeNblock5_conv3/kernel/read6training/SGD/gradients/block5_conv3/Relu_grad/ReluGrad*
data_formatNHWC*+
_class!
loc:@block5_conv3/convolution*
strides
*
paddingSAME*
T0*B
_output_shapes0
.:,����������������������������*
use_cudnn_on_gpu(
�
Itraining/SGD/gradients/block5_conv3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock5_conv2/Relu=training/SGD/gradients/block5_conv3/convolution_grad/ShapeN:16training/SGD/gradients/block5_conv3/Relu_grad/ReluGrad*
data_formatNHWC*+
_class!
loc:@block5_conv3/convolution*
strides
*
paddingSAME*
T0*(
_output_shapes
:��*
use_cudnn_on_gpu(
�
6training/SGD/gradients/block5_conv2/Relu_grad/ReluGradReluGradHtraining/SGD/gradients/block5_conv3/convolution_grad/Conv2DBackpropInputblock5_conv2/Relu*$
_class
loc:@block5_conv2/Relu*
T0*B
_output_shapes0
.:,����������������������������
�
<training/SGD/gradients/block5_conv2/BiasAdd_grad/BiasAddGradBiasAddGrad6training/SGD/gradients/block5_conv2/Relu_grad/ReluGrad*'
_class
loc:@block5_conv2/BiasAdd*
T0*
data_formatNHWC*
_output_shapes	
:�
�
;training/SGD/gradients/block5_conv2/convolution_grad/ShapeNShapeNblock5_conv1/Relublock5_conv2/kernel/read*+
_class!
loc:@block5_conv2/convolution*
T0*
N* 
_output_shapes
::*
out_type0
�
Htraining/SGD/gradients/block5_conv2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block5_conv2/convolution_grad/ShapeNblock5_conv2/kernel/read6training/SGD/gradients/block5_conv2/Relu_grad/ReluGrad*
data_formatNHWC*+
_class!
loc:@block5_conv2/convolution*
strides
*
paddingSAME*
T0*B
_output_shapes0
.:,����������������������������*
use_cudnn_on_gpu(
�
Itraining/SGD/gradients/block5_conv2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock5_conv1/Relu=training/SGD/gradients/block5_conv2/convolution_grad/ShapeN:16training/SGD/gradients/block5_conv2/Relu_grad/ReluGrad*
data_formatNHWC*+
_class!
loc:@block5_conv2/convolution*
strides
*
paddingSAME*
T0*(
_output_shapes
:��*
use_cudnn_on_gpu(
�
6training/SGD/gradients/block5_conv1/Relu_grad/ReluGradReluGradHtraining/SGD/gradients/block5_conv2/convolution_grad/Conv2DBackpropInputblock5_conv1/Relu*$
_class
loc:@block5_conv1/Relu*
T0*B
_output_shapes0
.:,����������������������������
�
<training/SGD/gradients/block5_conv1/BiasAdd_grad/BiasAddGradBiasAddGrad6training/SGD/gradients/block5_conv1/Relu_grad/ReluGrad*'
_class
loc:@block5_conv1/BiasAdd*
T0*
data_formatNHWC*
_output_shapes	
:�
�
;training/SGD/gradients/block5_conv1/convolution_grad/ShapeNShapeNblock4_pool/MaxPoolblock5_conv1/kernel/read*+
_class!
loc:@block5_conv1/convolution*
T0*
N* 
_output_shapes
::*
out_type0
�
Htraining/SGD/gradients/block5_conv1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block5_conv1/convolution_grad/ShapeNblock5_conv1/kernel/read6training/SGD/gradients/block5_conv1/Relu_grad/ReluGrad*
data_formatNHWC*+
_class!
loc:@block5_conv1/convolution*
strides
*
paddingSAME*
T0*B
_output_shapes0
.:,����������������������������*
use_cudnn_on_gpu(
�
Itraining/SGD/gradients/block5_conv1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock4_pool/MaxPool=training/SGD/gradients/block5_conv1/convolution_grad/ShapeN:16training/SGD/gradients/block5_conv1/Relu_grad/ReluGrad*
data_formatNHWC*+
_class!
loc:@block5_conv1/convolution*
strides
*
paddingSAME*
T0*(
_output_shapes
:��*
use_cudnn_on_gpu(
�
;training/SGD/gradients/block4_pool/MaxPool_grad/MaxPoolGradMaxPoolGradblock4_conv3/Relublock4_pool/MaxPoolHtraining/SGD/gradients/block5_conv1/convolution_grad/Conv2DBackpropInput*
data_formatNHWC*&
_class
loc:@block4_pool/MaxPool*
ksize
*
strides
*
paddingVALID*
T0*B
_output_shapes0
.:,����������������������������
�
6training/SGD/gradients/block4_conv3/Relu_grad/ReluGradReluGrad;training/SGD/gradients/block4_pool/MaxPool_grad/MaxPoolGradblock4_conv3/Relu*$
_class
loc:@block4_conv3/Relu*
T0*B
_output_shapes0
.:,����������������������������
�
<training/SGD/gradients/block4_conv3/BiasAdd_grad/BiasAddGradBiasAddGrad6training/SGD/gradients/block4_conv3/Relu_grad/ReluGrad*'
_class
loc:@block4_conv3/BiasAdd*
T0*
data_formatNHWC*
_output_shapes	
:�
�
;training/SGD/gradients/block4_conv3/convolution_grad/ShapeNShapeNblock4_conv2/Relublock4_conv3/kernel/read*+
_class!
loc:@block4_conv3/convolution*
T0*
N* 
_output_shapes
::*
out_type0
�
Htraining/SGD/gradients/block4_conv3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block4_conv3/convolution_grad/ShapeNblock4_conv3/kernel/read6training/SGD/gradients/block4_conv3/Relu_grad/ReluGrad*
data_formatNHWC*+
_class!
loc:@block4_conv3/convolution*
strides
*
paddingSAME*
T0*B
_output_shapes0
.:,����������������������������*
use_cudnn_on_gpu(
�
Itraining/SGD/gradients/block4_conv3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock4_conv2/Relu=training/SGD/gradients/block4_conv3/convolution_grad/ShapeN:16training/SGD/gradients/block4_conv3/Relu_grad/ReluGrad*
data_formatNHWC*+
_class!
loc:@block4_conv3/convolution*
strides
*
paddingSAME*
T0*(
_output_shapes
:��*
use_cudnn_on_gpu(
�
6training/SGD/gradients/block4_conv2/Relu_grad/ReluGradReluGradHtraining/SGD/gradients/block4_conv3/convolution_grad/Conv2DBackpropInputblock4_conv2/Relu*$
_class
loc:@block4_conv2/Relu*
T0*B
_output_shapes0
.:,����������������������������
�
<training/SGD/gradients/block4_conv2/BiasAdd_grad/BiasAddGradBiasAddGrad6training/SGD/gradients/block4_conv2/Relu_grad/ReluGrad*'
_class
loc:@block4_conv2/BiasAdd*
T0*
data_formatNHWC*
_output_shapes	
:�
�
;training/SGD/gradients/block4_conv2/convolution_grad/ShapeNShapeNblock4_conv1/Relublock4_conv2/kernel/read*+
_class!
loc:@block4_conv2/convolution*
T0*
N* 
_output_shapes
::*
out_type0
�
Htraining/SGD/gradients/block4_conv2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block4_conv2/convolution_grad/ShapeNblock4_conv2/kernel/read6training/SGD/gradients/block4_conv2/Relu_grad/ReluGrad*
data_formatNHWC*+
_class!
loc:@block4_conv2/convolution*
strides
*
paddingSAME*
T0*B
_output_shapes0
.:,����������������������������*
use_cudnn_on_gpu(
�
Itraining/SGD/gradients/block4_conv2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock4_conv1/Relu=training/SGD/gradients/block4_conv2/convolution_grad/ShapeN:16training/SGD/gradients/block4_conv2/Relu_grad/ReluGrad*
data_formatNHWC*+
_class!
loc:@block4_conv2/convolution*
strides
*
paddingSAME*
T0*(
_output_shapes
:��*
use_cudnn_on_gpu(
�
6training/SGD/gradients/block4_conv1/Relu_grad/ReluGradReluGradHtraining/SGD/gradients/block4_conv2/convolution_grad/Conv2DBackpropInputblock4_conv1/Relu*$
_class
loc:@block4_conv1/Relu*
T0*B
_output_shapes0
.:,����������������������������
�
<training/SGD/gradients/block4_conv1/BiasAdd_grad/BiasAddGradBiasAddGrad6training/SGD/gradients/block4_conv1/Relu_grad/ReluGrad*'
_class
loc:@block4_conv1/BiasAdd*
T0*
data_formatNHWC*
_output_shapes	
:�
�
;training/SGD/gradients/block4_conv1/convolution_grad/ShapeNShapeNblock3_pool/MaxPoolblock4_conv1/kernel/read*+
_class!
loc:@block4_conv1/convolution*
T0*
N* 
_output_shapes
::*
out_type0
�
Htraining/SGD/gradients/block4_conv1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block4_conv1/convolution_grad/ShapeNblock4_conv1/kernel/read6training/SGD/gradients/block4_conv1/Relu_grad/ReluGrad*
data_formatNHWC*+
_class!
loc:@block4_conv1/convolution*
strides
*
paddingSAME*
T0*B
_output_shapes0
.:,����������������������������*
use_cudnn_on_gpu(
�
Itraining/SGD/gradients/block4_conv1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock3_pool/MaxPool=training/SGD/gradients/block4_conv1/convolution_grad/ShapeN:16training/SGD/gradients/block4_conv1/Relu_grad/ReluGrad*
data_formatNHWC*+
_class!
loc:@block4_conv1/convolution*
strides
*
paddingSAME*
T0*(
_output_shapes
:��*
use_cudnn_on_gpu(
^
training/SGD/AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 
�
training/SGD/AssignAdd	AssignAddSGD/iterationstraining/SGD/AssignAdd/value*!
_class
loc:@SGD/iterations*
T0	*
use_locking( *
_output_shapes
: 
{
training/SGD/ConstConst*'
valueB��*    *
dtype0*(
_output_shapes
:��
�
training/SGD/Variable
VariableV2*
dtype0*
shape:��*(
_output_shapes
:��*
	container *
shared_name 
�
training/SGD/Variable/AssignAssigntraining/SGD/Variabletraining/SGD/Const*(
_class
loc:@training/SGD/Variable*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
�
training/SGD/Variable/readIdentitytraining/SGD/Variable*(
_class
loc:@training/SGD/Variable*
T0*(
_output_shapes
:��
c
training/SGD/Const_1Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/SGD/Variable_1
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
training/SGD/Variable_1/AssignAssigntraining/SGD/Variable_1training/SGD/Const_1**
_class 
loc:@training/SGD/Variable_1*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
�
training/SGD/Variable_1/readIdentitytraining/SGD/Variable_1**
_class 
loc:@training/SGD/Variable_1*
T0*
_output_shapes	
:�
}
training/SGD/Const_2Const*'
valueB��*    *
dtype0*(
_output_shapes
:��
�
training/SGD/Variable_2
VariableV2*
dtype0*
shape:��*(
_output_shapes
:��*
	container *
shared_name 
�
training/SGD/Variable_2/AssignAssigntraining/SGD/Variable_2training/SGD/Const_2**
_class 
loc:@training/SGD/Variable_2*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
�
training/SGD/Variable_2/readIdentitytraining/SGD/Variable_2**
_class 
loc:@training/SGD/Variable_2*
T0*(
_output_shapes
:��
c
training/SGD/Const_3Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/SGD/Variable_3
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
training/SGD/Variable_3/AssignAssigntraining/SGD/Variable_3training/SGD/Const_3**
_class 
loc:@training/SGD/Variable_3*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
�
training/SGD/Variable_3/readIdentitytraining/SGD/Variable_3**
_class 
loc:@training/SGD/Variable_3*
T0*
_output_shapes	
:�
}
training/SGD/Const_4Const*'
valueB��*    *
dtype0*(
_output_shapes
:��
�
training/SGD/Variable_4
VariableV2*
dtype0*
shape:��*(
_output_shapes
:��*
	container *
shared_name 
�
training/SGD/Variable_4/AssignAssigntraining/SGD/Variable_4training/SGD/Const_4**
_class 
loc:@training/SGD/Variable_4*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
�
training/SGD/Variable_4/readIdentitytraining/SGD/Variable_4**
_class 
loc:@training/SGD/Variable_4*
T0*(
_output_shapes
:��
c
training/SGD/Const_5Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/SGD/Variable_5
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
training/SGD/Variable_5/AssignAssigntraining/SGD/Variable_5training/SGD/Const_5**
_class 
loc:@training/SGD/Variable_5*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
�
training/SGD/Variable_5/readIdentitytraining/SGD/Variable_5**
_class 
loc:@training/SGD/Variable_5*
T0*
_output_shapes	
:�
}
training/SGD/Const_6Const*'
valueB��*    *
dtype0*(
_output_shapes
:��
�
training/SGD/Variable_6
VariableV2*
dtype0*
shape:��*(
_output_shapes
:��*
	container *
shared_name 
�
training/SGD/Variable_6/AssignAssigntraining/SGD/Variable_6training/SGD/Const_6**
_class 
loc:@training/SGD/Variable_6*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
�
training/SGD/Variable_6/readIdentitytraining/SGD/Variable_6**
_class 
loc:@training/SGD/Variable_6*
T0*(
_output_shapes
:��
c
training/SGD/Const_7Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/SGD/Variable_7
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
training/SGD/Variable_7/AssignAssigntraining/SGD/Variable_7training/SGD/Const_7**
_class 
loc:@training/SGD/Variable_7*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
�
training/SGD/Variable_7/readIdentitytraining/SGD/Variable_7**
_class 
loc:@training/SGD/Variable_7*
T0*
_output_shapes	
:�
}
training/SGD/Const_8Const*'
valueB��*    *
dtype0*(
_output_shapes
:��
�
training/SGD/Variable_8
VariableV2*
dtype0*
shape:��*(
_output_shapes
:��*
	container *
shared_name 
�
training/SGD/Variable_8/AssignAssigntraining/SGD/Variable_8training/SGD/Const_8**
_class 
loc:@training/SGD/Variable_8*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
�
training/SGD/Variable_8/readIdentitytraining/SGD/Variable_8**
_class 
loc:@training/SGD/Variable_8*
T0*(
_output_shapes
:��
c
training/SGD/Const_9Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/SGD/Variable_9
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
training/SGD/Variable_9/AssignAssigntraining/SGD/Variable_9training/SGD/Const_9**
_class 
loc:@training/SGD/Variable_9*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
�
training/SGD/Variable_9/readIdentitytraining/SGD/Variable_9**
_class 
loc:@training/SGD/Variable_9*
T0*
_output_shapes	
:�
~
training/SGD/Const_10Const*'
valueB��*    *
dtype0*(
_output_shapes
:��
�
training/SGD/Variable_10
VariableV2*
dtype0*
shape:��*(
_output_shapes
:��*
	container *
shared_name 
�
training/SGD/Variable_10/AssignAssigntraining/SGD/Variable_10training/SGD/Const_10*+
_class!
loc:@training/SGD/Variable_10*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
�
training/SGD/Variable_10/readIdentitytraining/SGD/Variable_10*+
_class!
loc:@training/SGD/Variable_10*
T0*(
_output_shapes
:��
d
training/SGD/Const_11Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/SGD/Variable_11
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
training/SGD/Variable_11/AssignAssigntraining/SGD/Variable_11training/SGD/Const_11*+
_class!
loc:@training/SGD/Variable_11*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
�
training/SGD/Variable_11/readIdentitytraining/SGD/Variable_11*+
_class!
loc:@training/SGD/Variable_11*
T0*
_output_shapes	
:�
n
training/SGD/Const_12Const*
valueB
��*    *
dtype0* 
_output_shapes
:
��
�
training/SGD/Variable_12
VariableV2*
dtype0*
shape:
��* 
_output_shapes
:
��*
	container *
shared_name 
�
training/SGD/Variable_12/AssignAssigntraining/SGD/Variable_12training/SGD/Const_12*+
_class!
loc:@training/SGD/Variable_12*
use_locking(* 
_output_shapes
:
��*
T0*
validate_shape(
�
training/SGD/Variable_12/readIdentitytraining/SGD/Variable_12*+
_class!
loc:@training/SGD/Variable_12*
T0* 
_output_shapes
:
��
d
training/SGD/Const_13Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/SGD/Variable_13
VariableV2*
dtype0*
shape:�*
_output_shapes	
:�*
	container *
shared_name 
�
training/SGD/Variable_13/AssignAssigntraining/SGD/Variable_13training/SGD/Const_13*+
_class!
loc:@training/SGD/Variable_13*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
�
training/SGD/Variable_13/readIdentitytraining/SGD/Variable_13*+
_class!
loc:@training/SGD/Variable_13*
T0*
_output_shapes	
:�
l
training/SGD/Const_14Const*
valueB	�*    *
dtype0*
_output_shapes
:	�
�
training/SGD/Variable_14
VariableV2*
dtype0*
shape:	�*
_output_shapes
:	�*
	container *
shared_name 
�
training/SGD/Variable_14/AssignAssigntraining/SGD/Variable_14training/SGD/Const_14*+
_class!
loc:@training/SGD/Variable_14*
use_locking(*
_output_shapes
:	�*
T0*
validate_shape(
�
training/SGD/Variable_14/readIdentitytraining/SGD/Variable_14*+
_class!
loc:@training/SGD/Variable_14*
T0*
_output_shapes
:	�
b
training/SGD/Const_15Const*
valueB*    *
dtype0*
_output_shapes
:
�
training/SGD/Variable_15
VariableV2*
dtype0*
shape:*
_output_shapes
:*
	container *
shared_name 
�
training/SGD/Variable_15/AssignAssigntraining/SGD/Variable_15training/SGD/Const_15*+
_class!
loc:@training/SGD/Variable_15*
use_locking(*
_output_shapes
:*
T0*
validate_shape(
�
training/SGD/Variable_15/readIdentitytraining/SGD/Variable_15*+
_class!
loc:@training/SGD/Variable_15*
T0*
_output_shapes
:
y
training/SGD/mulMulSGD/momentum/readtraining/SGD/Variable/read*
T0*(
_output_shapes
:��
�
training/SGD/mul_1MulSGD/lr/readItraining/SGD/gradients/block4_conv1/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:��
p
training/SGD/subSubtraining/SGD/multraining/SGD/mul_1*
T0*(
_output_shapes
:��
�
training/SGD/AssignAssigntraining/SGD/Variabletraining/SGD/sub*(
_class
loc:@training/SGD/Variable*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
v
training/SGD/addAddblock4_conv1/kernel/readtraining/SGD/sub*
T0*(
_output_shapes
:��
�
training/SGD/Assign_1Assignblock4_conv1/kerneltraining/SGD/add*&
_class
loc:@block4_conv1/kernel*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
p
training/SGD/mul_2MulSGD/momentum/readtraining/SGD/Variable_1/read*
T0*
_output_shapes	
:�
�
training/SGD/mul_3MulSGD/lr/read<training/SGD/gradients/block4_conv1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
g
training/SGD/sub_1Subtraining/SGD/mul_2training/SGD/mul_3*
T0*
_output_shapes	
:�
�
training/SGD/Assign_2Assigntraining/SGD/Variable_1training/SGD/sub_1**
_class 
loc:@training/SGD/Variable_1*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
k
training/SGD/add_1Addblock4_conv1/bias/readtraining/SGD/sub_1*
T0*
_output_shapes	
:�
�
training/SGD/Assign_3Assignblock4_conv1/biastraining/SGD/add_1*$
_class
loc:@block4_conv1/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
}
training/SGD/mul_4MulSGD/momentum/readtraining/SGD/Variable_2/read*
T0*(
_output_shapes
:��
�
training/SGD/mul_5MulSGD/lr/readItraining/SGD/gradients/block4_conv2/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:��
t
training/SGD/sub_2Subtraining/SGD/mul_4training/SGD/mul_5*
T0*(
_output_shapes
:��
�
training/SGD/Assign_4Assigntraining/SGD/Variable_2training/SGD/sub_2**
_class 
loc:@training/SGD/Variable_2*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
z
training/SGD/add_2Addblock4_conv2/kernel/readtraining/SGD/sub_2*
T0*(
_output_shapes
:��
�
training/SGD/Assign_5Assignblock4_conv2/kerneltraining/SGD/add_2*&
_class
loc:@block4_conv2/kernel*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
p
training/SGD/mul_6MulSGD/momentum/readtraining/SGD/Variable_3/read*
T0*
_output_shapes	
:�
�
training/SGD/mul_7MulSGD/lr/read<training/SGD/gradients/block4_conv2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
g
training/SGD/sub_3Subtraining/SGD/mul_6training/SGD/mul_7*
T0*
_output_shapes	
:�
�
training/SGD/Assign_6Assigntraining/SGD/Variable_3training/SGD/sub_3**
_class 
loc:@training/SGD/Variable_3*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
k
training/SGD/add_3Addblock4_conv2/bias/readtraining/SGD/sub_3*
T0*
_output_shapes	
:�
�
training/SGD/Assign_7Assignblock4_conv2/biastraining/SGD/add_3*$
_class
loc:@block4_conv2/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
}
training/SGD/mul_8MulSGD/momentum/readtraining/SGD/Variable_4/read*
T0*(
_output_shapes
:��
�
training/SGD/mul_9MulSGD/lr/readItraining/SGD/gradients/block4_conv3/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:��
t
training/SGD/sub_4Subtraining/SGD/mul_8training/SGD/mul_9*
T0*(
_output_shapes
:��
�
training/SGD/Assign_8Assigntraining/SGD/Variable_4training/SGD/sub_4**
_class 
loc:@training/SGD/Variable_4*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
z
training/SGD/add_4Addblock4_conv3/kernel/readtraining/SGD/sub_4*
T0*(
_output_shapes
:��
�
training/SGD/Assign_9Assignblock4_conv3/kerneltraining/SGD/add_4*&
_class
loc:@block4_conv3/kernel*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
q
training/SGD/mul_10MulSGD/momentum/readtraining/SGD/Variable_5/read*
T0*
_output_shapes	
:�
�
training/SGD/mul_11MulSGD/lr/read<training/SGD/gradients/block4_conv3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
i
training/SGD/sub_5Subtraining/SGD/mul_10training/SGD/mul_11*
T0*
_output_shapes	
:�
�
training/SGD/Assign_10Assigntraining/SGD/Variable_5training/SGD/sub_5**
_class 
loc:@training/SGD/Variable_5*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
k
training/SGD/add_5Addblock4_conv3/bias/readtraining/SGD/sub_5*
T0*
_output_shapes	
:�
�
training/SGD/Assign_11Assignblock4_conv3/biastraining/SGD/add_5*$
_class
loc:@block4_conv3/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
~
training/SGD/mul_12MulSGD/momentum/readtraining/SGD/Variable_6/read*
T0*(
_output_shapes
:��
�
training/SGD/mul_13MulSGD/lr/readItraining/SGD/gradients/block5_conv1/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:��
v
training/SGD/sub_6Subtraining/SGD/mul_12training/SGD/mul_13*
T0*(
_output_shapes
:��
�
training/SGD/Assign_12Assigntraining/SGD/Variable_6training/SGD/sub_6**
_class 
loc:@training/SGD/Variable_6*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
z
training/SGD/add_6Addblock5_conv1/kernel/readtraining/SGD/sub_6*
T0*(
_output_shapes
:��
�
training/SGD/Assign_13Assignblock5_conv1/kerneltraining/SGD/add_6*&
_class
loc:@block5_conv1/kernel*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
q
training/SGD/mul_14MulSGD/momentum/readtraining/SGD/Variable_7/read*
T0*
_output_shapes	
:�
�
training/SGD/mul_15MulSGD/lr/read<training/SGD/gradients/block5_conv1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
i
training/SGD/sub_7Subtraining/SGD/mul_14training/SGD/mul_15*
T0*
_output_shapes	
:�
�
training/SGD/Assign_14Assigntraining/SGD/Variable_7training/SGD/sub_7**
_class 
loc:@training/SGD/Variable_7*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
k
training/SGD/add_7Addblock5_conv1/bias/readtraining/SGD/sub_7*
T0*
_output_shapes	
:�
�
training/SGD/Assign_15Assignblock5_conv1/biastraining/SGD/add_7*$
_class
loc:@block5_conv1/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
~
training/SGD/mul_16MulSGD/momentum/readtraining/SGD/Variable_8/read*
T0*(
_output_shapes
:��
�
training/SGD/mul_17MulSGD/lr/readItraining/SGD/gradients/block5_conv2/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:��
v
training/SGD/sub_8Subtraining/SGD/mul_16training/SGD/mul_17*
T0*(
_output_shapes
:��
�
training/SGD/Assign_16Assigntraining/SGD/Variable_8training/SGD/sub_8**
_class 
loc:@training/SGD/Variable_8*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
z
training/SGD/add_8Addblock5_conv2/kernel/readtraining/SGD/sub_8*
T0*(
_output_shapes
:��
�
training/SGD/Assign_17Assignblock5_conv2/kerneltraining/SGD/add_8*&
_class
loc:@block5_conv2/kernel*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
q
training/SGD/mul_18MulSGD/momentum/readtraining/SGD/Variable_9/read*
T0*
_output_shapes	
:�
�
training/SGD/mul_19MulSGD/lr/read<training/SGD/gradients/block5_conv2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
i
training/SGD/sub_9Subtraining/SGD/mul_18training/SGD/mul_19*
T0*
_output_shapes	
:�
�
training/SGD/Assign_18Assigntraining/SGD/Variable_9training/SGD/sub_9**
_class 
loc:@training/SGD/Variable_9*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
k
training/SGD/add_9Addblock5_conv2/bias/readtraining/SGD/sub_9*
T0*
_output_shapes	
:�
�
training/SGD/Assign_19Assignblock5_conv2/biastraining/SGD/add_9*$
_class
loc:@block5_conv2/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(

training/SGD/mul_20MulSGD/momentum/readtraining/SGD/Variable_10/read*
T0*(
_output_shapes
:��
�
training/SGD/mul_21MulSGD/lr/readItraining/SGD/gradients/block5_conv3/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:��
w
training/SGD/sub_10Subtraining/SGD/mul_20training/SGD/mul_21*
T0*(
_output_shapes
:��
�
training/SGD/Assign_20Assigntraining/SGD/Variable_10training/SGD/sub_10*+
_class!
loc:@training/SGD/Variable_10*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
|
training/SGD/add_10Addblock5_conv3/kernel/readtraining/SGD/sub_10*
T0*(
_output_shapes
:��
�
training/SGD/Assign_21Assignblock5_conv3/kerneltraining/SGD/add_10*&
_class
loc:@block5_conv3/kernel*
use_locking(*(
_output_shapes
:��*
T0*
validate_shape(
r
training/SGD/mul_22MulSGD/momentum/readtraining/SGD/Variable_11/read*
T0*
_output_shapes	
:�
�
training/SGD/mul_23MulSGD/lr/read<training/SGD/gradients/block5_conv3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
j
training/SGD/sub_11Subtraining/SGD/mul_22training/SGD/mul_23*
T0*
_output_shapes	
:�
�
training/SGD/Assign_22Assigntraining/SGD/Variable_11training/SGD/sub_11*+
_class!
loc:@training/SGD/Variable_11*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
m
training/SGD/add_11Addblock5_conv3/bias/readtraining/SGD/sub_11*
T0*
_output_shapes	
:�
�
training/SGD/Assign_23Assignblock5_conv3/biastraining/SGD/add_11*$
_class
loc:@block5_conv3/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
w
training/SGD/mul_24MulSGD/momentum/readtraining/SGD/Variable_12/read*
T0* 
_output_shapes
:
��
�
training/SGD/mul_25MulSGD/lr/read3training/SGD/gradients/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
��
o
training/SGD/sub_12Subtraining/SGD/mul_24training/SGD/mul_25*
T0* 
_output_shapes
:
��
�
training/SGD/Assign_24Assigntraining/SGD/Variable_12training/SGD/sub_12*+
_class!
loc:@training/SGD/Variable_12*
use_locking(* 
_output_shapes
:
��*
T0*
validate_shape(
o
training/SGD/add_12Adddense_1/kernel/readtraining/SGD/sub_12*
T0* 
_output_shapes
:
��
�
training/SGD/Assign_25Assigndense_1/kerneltraining/SGD/add_12*!
_class
loc:@dense_1/kernel*
use_locking(* 
_output_shapes
:
��*
T0*
validate_shape(
r
training/SGD/mul_26MulSGD/momentum/readtraining/SGD/Variable_13/read*
T0*
_output_shapes	
:�
�
training/SGD/mul_27MulSGD/lr/read7training/SGD/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
j
training/SGD/sub_13Subtraining/SGD/mul_26training/SGD/mul_27*
T0*
_output_shapes	
:�
�
training/SGD/Assign_26Assigntraining/SGD/Variable_13training/SGD/sub_13*+
_class!
loc:@training/SGD/Variable_13*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
h
training/SGD/add_13Adddense_1/bias/readtraining/SGD/sub_13*
T0*
_output_shapes	
:�
�
training/SGD/Assign_27Assigndense_1/biastraining/SGD/add_13*
_class
loc:@dense_1/bias*
use_locking(*
_output_shapes	
:�*
T0*
validate_shape(
v
training/SGD/mul_28MulSGD/momentum/readtraining/SGD/Variable_14/read*
T0*
_output_shapes
:	�
�
training/SGD/mul_29MulSGD/lr/read3training/SGD/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�
n
training/SGD/sub_14Subtraining/SGD/mul_28training/SGD/mul_29*
T0*
_output_shapes
:	�
�
training/SGD/Assign_28Assigntraining/SGD/Variable_14training/SGD/sub_14*+
_class!
loc:@training/SGD/Variable_14*
use_locking(*
_output_shapes
:	�*
T0*
validate_shape(
n
training/SGD/add_14Adddense_2/kernel/readtraining/SGD/sub_14*
T0*
_output_shapes
:	�
�
training/SGD/Assign_29Assigndense_2/kerneltraining/SGD/add_14*!
_class
loc:@dense_2/kernel*
use_locking(*
_output_shapes
:	�*
T0*
validate_shape(
q
training/SGD/mul_30MulSGD/momentum/readtraining/SGD/Variable_15/read*
T0*
_output_shapes
:
�
training/SGD/mul_31MulSGD/lr/read7training/SGD/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_15Subtraining/SGD/mul_30training/SGD/mul_31*
T0*
_output_shapes
:
�
training/SGD/Assign_30Assigntraining/SGD/Variable_15training/SGD/sub_15*+
_class!
loc:@training/SGD/Variable_15*
use_locking(*
_output_shapes
:*
T0*
validate_shape(
g
training/SGD/add_15Adddense_2/bias/readtraining/SGD/sub_15*
T0*
_output_shapes
:
�
training/SGD/Assign_31Assigndense_2/biastraining/SGD/add_15*
_class
loc:@dense_2/bias*
use_locking(*
_output_shapes
:*
T0*
validate_shape(
�
training/group_depsNoOp	^loss/mul^metrics/acc/Mean_1^training/SGD/AssignAdd^training/SGD/Assign^training/SGD/Assign_1^training/SGD/Assign_2^training/SGD/Assign_3^training/SGD/Assign_4^training/SGD/Assign_5^training/SGD/Assign_6^training/SGD/Assign_7^training/SGD/Assign_8^training/SGD/Assign_9^training/SGD/Assign_10^training/SGD/Assign_11^training/SGD/Assign_12^training/SGD/Assign_13^training/SGD/Assign_14^training/SGD/Assign_15^training/SGD/Assign_16^training/SGD/Assign_17^training/SGD/Assign_18^training/SGD/Assign_19^training/SGD/Assign_20^training/SGD/Assign_21^training/SGD/Assign_22^training/SGD/Assign_23^training/SGD/Assign_24^training/SGD/Assign_25^training/SGD/Assign_26^training/SGD/Assign_27^training/SGD/Assign_28^training/SGD/Assign_29^training/SGD/Assign_30^training/SGD/Assign_31
2

group_depsNoOp	^loss/mul^metrics/acc/Mean_1
�
IsVariableInitialized_26IsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_27IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_28IsVariableInitializeddense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_29IsVariableInitializeddense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_30IsVariableInitializedSGD/iterations*!
_class
loc:@SGD/iterations*
dtype0	*
_output_shapes
: 
y
IsVariableInitialized_31IsVariableInitializedSGD/lr*
_class
loc:@SGD/lr*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_32IsVariableInitializedSGD/momentum*
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 

IsVariableInitialized_33IsVariableInitialized	SGD/decay*
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_34IsVariableInitializedtraining/SGD/Variable*(
_class
loc:@training/SGD/Variable*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_35IsVariableInitializedtraining/SGD/Variable_1**
_class 
loc:@training/SGD/Variable_1*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_36IsVariableInitializedtraining/SGD/Variable_2**
_class 
loc:@training/SGD/Variable_2*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_37IsVariableInitializedtraining/SGD/Variable_3**
_class 
loc:@training/SGD/Variable_3*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_38IsVariableInitializedtraining/SGD/Variable_4**
_class 
loc:@training/SGD/Variable_4*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_39IsVariableInitializedtraining/SGD/Variable_5**
_class 
loc:@training/SGD/Variable_5*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_40IsVariableInitializedtraining/SGD/Variable_6**
_class 
loc:@training/SGD/Variable_6*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_41IsVariableInitializedtraining/SGD/Variable_7**
_class 
loc:@training/SGD/Variable_7*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_42IsVariableInitializedtraining/SGD/Variable_8**
_class 
loc:@training/SGD/Variable_8*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_43IsVariableInitializedtraining/SGD/Variable_9**
_class 
loc:@training/SGD/Variable_9*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_44IsVariableInitializedtraining/SGD/Variable_10*+
_class!
loc:@training/SGD/Variable_10*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_45IsVariableInitializedtraining/SGD/Variable_11*+
_class!
loc:@training/SGD/Variable_11*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_46IsVariableInitializedtraining/SGD/Variable_12*+
_class!
loc:@training/SGD/Variable_12*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_47IsVariableInitializedtraining/SGD/Variable_13*+
_class!
loc:@training/SGD/Variable_13*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_48IsVariableInitializedtraining/SGD/Variable_14*+
_class!
loc:@training/SGD/Variable_14*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_49IsVariableInitializedtraining/SGD/Variable_15*+
_class!
loc:@training/SGD/Variable_15*
dtype0*
_output_shapes
: 
�
init_1NoOp^dense_1/kernel/Assign^dense_1/bias/Assign^dense_2/kernel/Assign^dense_2/bias/Assign^SGD/iterations/Assign^SGD/lr/Assign^SGD/momentum/Assign^SGD/decay/Assign^training/SGD/Variable/Assign^training/SGD/Variable_1/Assign^training/SGD/Variable_2/Assign^training/SGD/Variable_3/Assign^training/SGD/Variable_4/Assign^training/SGD/Variable_5/Assign^training/SGD/Variable_6/Assign^training/SGD/Variable_7/Assign^training/SGD/Variable_8/Assign^training/SGD/Variable_9/Assign ^training/SGD/Variable_10/Assign ^training/SGD/Variable_11/Assign ^training/SGD/Variable_12/Assign ^training/SGD/Variable_13/Assign ^training/SGD/Variable_14/Assign ^training/SGD/Variable_15/Assign""�)
trainable_variables�)�)
n
block1_conv1/kernel:0block1_conv1/kernel/Assignblock1_conv1/kernel/read:02block1_conv1/random_uniform:0
_
block1_conv1/bias:0block1_conv1/bias/Assignblock1_conv1/bias/read:02block1_conv1/Const:0
n
block1_conv2/kernel:0block1_conv2/kernel/Assignblock1_conv2/kernel/read:02block1_conv2/random_uniform:0
_
block1_conv2/bias:0block1_conv2/bias/Assignblock1_conv2/bias/read:02block1_conv2/Const:0
n
block2_conv1/kernel:0block2_conv1/kernel/Assignblock2_conv1/kernel/read:02block2_conv1/random_uniform:0
_
block2_conv1/bias:0block2_conv1/bias/Assignblock2_conv1/bias/read:02block2_conv1/Const:0
n
block2_conv2/kernel:0block2_conv2/kernel/Assignblock2_conv2/kernel/read:02block2_conv2/random_uniform:0
_
block2_conv2/bias:0block2_conv2/bias/Assignblock2_conv2/bias/read:02block2_conv2/Const:0
n
block3_conv1/kernel:0block3_conv1/kernel/Assignblock3_conv1/kernel/read:02block3_conv1/random_uniform:0
_
block3_conv1/bias:0block3_conv1/bias/Assignblock3_conv1/bias/read:02block3_conv1/Const:0
n
block3_conv2/kernel:0block3_conv2/kernel/Assignblock3_conv2/kernel/read:02block3_conv2/random_uniform:0
_
block3_conv2/bias:0block3_conv2/bias/Assignblock3_conv2/bias/read:02block3_conv2/Const:0
n
block3_conv3/kernel:0block3_conv3/kernel/Assignblock3_conv3/kernel/read:02block3_conv3/random_uniform:0
_
block3_conv3/bias:0block3_conv3/bias/Assignblock3_conv3/bias/read:02block3_conv3/Const:0
n
block4_conv1/kernel:0block4_conv1/kernel/Assignblock4_conv1/kernel/read:02block4_conv1/random_uniform:0
_
block4_conv1/bias:0block4_conv1/bias/Assignblock4_conv1/bias/read:02block4_conv1/Const:0
n
block4_conv2/kernel:0block4_conv2/kernel/Assignblock4_conv2/kernel/read:02block4_conv2/random_uniform:0
_
block4_conv2/bias:0block4_conv2/bias/Assignblock4_conv2/bias/read:02block4_conv2/Const:0
n
block4_conv3/kernel:0block4_conv3/kernel/Assignblock4_conv3/kernel/read:02block4_conv3/random_uniform:0
_
block4_conv3/bias:0block4_conv3/bias/Assignblock4_conv3/bias/read:02block4_conv3/Const:0
n
block5_conv1/kernel:0block5_conv1/kernel/Assignblock5_conv1/kernel/read:02block5_conv1/random_uniform:0
_
block5_conv1/bias:0block5_conv1/bias/Assignblock5_conv1/bias/read:02block5_conv1/Const:0
n
block5_conv2/kernel:0block5_conv2/kernel/Assignblock5_conv2/kernel/read:02block5_conv2/random_uniform:0
_
block5_conv2/bias:0block5_conv2/bias/Assignblock5_conv2/bias/read:02block5_conv2/Const:0
n
block5_conv3/kernel:0block5_conv3/kernel/Assignblock5_conv3/kernel/read:02block5_conv3/random_uniform:0
_
block5_conv3/bias:0block5_conv3/bias/Assignblock5_conv3/bias/read:02block5_conv3/Const:0
Z
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:0
K
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:0
Z
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:0
K
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:0
`
SGD/iterations:0SGD/iterations/AssignSGD/iterations/read:02SGD/iterations/initial_value:0
@
SGD/lr:0SGD/lr/AssignSGD/lr/read:02SGD/lr/initial_value:0
X
SGD/momentum:0SGD/momentum/AssignSGD/momentum/read:02SGD/momentum/initial_value:0
L
SGD/decay:0SGD/decay/AssignSGD/decay/read:02SGD/decay/initial_value:0
k
training/SGD/Variable:0training/SGD/Variable/Assigntraining/SGD/Variable/read:02training/SGD/Const:0
s
training/SGD/Variable_1:0training/SGD/Variable_1/Assigntraining/SGD/Variable_1/read:02training/SGD/Const_1:0
s
training/SGD/Variable_2:0training/SGD/Variable_2/Assigntraining/SGD/Variable_2/read:02training/SGD/Const_2:0
s
training/SGD/Variable_3:0training/SGD/Variable_3/Assigntraining/SGD/Variable_3/read:02training/SGD/Const_3:0
s
training/SGD/Variable_4:0training/SGD/Variable_4/Assigntraining/SGD/Variable_4/read:02training/SGD/Const_4:0
s
training/SGD/Variable_5:0training/SGD/Variable_5/Assigntraining/SGD/Variable_5/read:02training/SGD/Const_5:0
s
training/SGD/Variable_6:0training/SGD/Variable_6/Assigntraining/SGD/Variable_6/read:02training/SGD/Const_6:0
s
training/SGD/Variable_7:0training/SGD/Variable_7/Assigntraining/SGD/Variable_7/read:02training/SGD/Const_7:0
s
training/SGD/Variable_8:0training/SGD/Variable_8/Assigntraining/SGD/Variable_8/read:02training/SGD/Const_8:0
s
training/SGD/Variable_9:0training/SGD/Variable_9/Assigntraining/SGD/Variable_9/read:02training/SGD/Const_9:0
w
training/SGD/Variable_10:0training/SGD/Variable_10/Assigntraining/SGD/Variable_10/read:02training/SGD/Const_10:0
w
training/SGD/Variable_11:0training/SGD/Variable_11/Assigntraining/SGD/Variable_11/read:02training/SGD/Const_11:0
w
training/SGD/Variable_12:0training/SGD/Variable_12/Assigntraining/SGD/Variable_12/read:02training/SGD/Const_12:0
w
training/SGD/Variable_13:0training/SGD/Variable_13/Assigntraining/SGD/Variable_13/read:02training/SGD/Const_13:0
w
training/SGD/Variable_14:0training/SGD/Variable_14/Assigntraining/SGD/Variable_14/read:02training/SGD/Const_14:0
w
training/SGD/Variable_15:0training/SGD/Variable_15/Assigntraining/SGD/Variable_15/read:02training/SGD/Const_15:0"�)
	variables�)�)
n
block1_conv1/kernel:0block1_conv1/kernel/Assignblock1_conv1/kernel/read:02block1_conv1/random_uniform:0
_
block1_conv1/bias:0block1_conv1/bias/Assignblock1_conv1/bias/read:02block1_conv1/Const:0
n
block1_conv2/kernel:0block1_conv2/kernel/Assignblock1_conv2/kernel/read:02block1_conv2/random_uniform:0
_
block1_conv2/bias:0block1_conv2/bias/Assignblock1_conv2/bias/read:02block1_conv2/Const:0
n
block2_conv1/kernel:0block2_conv1/kernel/Assignblock2_conv1/kernel/read:02block2_conv1/random_uniform:0
_
block2_conv1/bias:0block2_conv1/bias/Assignblock2_conv1/bias/read:02block2_conv1/Const:0
n
block2_conv2/kernel:0block2_conv2/kernel/Assignblock2_conv2/kernel/read:02block2_conv2/random_uniform:0
_
block2_conv2/bias:0block2_conv2/bias/Assignblock2_conv2/bias/read:02block2_conv2/Const:0
n
block3_conv1/kernel:0block3_conv1/kernel/Assignblock3_conv1/kernel/read:02block3_conv1/random_uniform:0
_
block3_conv1/bias:0block3_conv1/bias/Assignblock3_conv1/bias/read:02block3_conv1/Const:0
n
block3_conv2/kernel:0block3_conv2/kernel/Assignblock3_conv2/kernel/read:02block3_conv2/random_uniform:0
_
block3_conv2/bias:0block3_conv2/bias/Assignblock3_conv2/bias/read:02block3_conv2/Const:0
n
block3_conv3/kernel:0block3_conv3/kernel/Assignblock3_conv3/kernel/read:02block3_conv3/random_uniform:0
_
block3_conv3/bias:0block3_conv3/bias/Assignblock3_conv3/bias/read:02block3_conv3/Const:0
n
block4_conv1/kernel:0block4_conv1/kernel/Assignblock4_conv1/kernel/read:02block4_conv1/random_uniform:0
_
block4_conv1/bias:0block4_conv1/bias/Assignblock4_conv1/bias/read:02block4_conv1/Const:0
n
block4_conv2/kernel:0block4_conv2/kernel/Assignblock4_conv2/kernel/read:02block4_conv2/random_uniform:0
_
block4_conv2/bias:0block4_conv2/bias/Assignblock4_conv2/bias/read:02block4_conv2/Const:0
n
block4_conv3/kernel:0block4_conv3/kernel/Assignblock4_conv3/kernel/read:02block4_conv3/random_uniform:0
_
block4_conv3/bias:0block4_conv3/bias/Assignblock4_conv3/bias/read:02block4_conv3/Const:0
n
block5_conv1/kernel:0block5_conv1/kernel/Assignblock5_conv1/kernel/read:02block5_conv1/random_uniform:0
_
block5_conv1/bias:0block5_conv1/bias/Assignblock5_conv1/bias/read:02block5_conv1/Const:0
n
block5_conv2/kernel:0block5_conv2/kernel/Assignblock5_conv2/kernel/read:02block5_conv2/random_uniform:0
_
block5_conv2/bias:0block5_conv2/bias/Assignblock5_conv2/bias/read:02block5_conv2/Const:0
n
block5_conv3/kernel:0block5_conv3/kernel/Assignblock5_conv3/kernel/read:02block5_conv3/random_uniform:0
_
block5_conv3/bias:0block5_conv3/bias/Assignblock5_conv3/bias/read:02block5_conv3/Const:0
Z
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:0
K
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:0
Z
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:0
K
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:0
`
SGD/iterations:0SGD/iterations/AssignSGD/iterations/read:02SGD/iterations/initial_value:0
@
SGD/lr:0SGD/lr/AssignSGD/lr/read:02SGD/lr/initial_value:0
X
SGD/momentum:0SGD/momentum/AssignSGD/momentum/read:02SGD/momentum/initial_value:0
L
SGD/decay:0SGD/decay/AssignSGD/decay/read:02SGD/decay/initial_value:0
k
training/SGD/Variable:0training/SGD/Variable/Assigntraining/SGD/Variable/read:02training/SGD/Const:0
s
training/SGD/Variable_1:0training/SGD/Variable_1/Assigntraining/SGD/Variable_1/read:02training/SGD/Const_1:0
s
training/SGD/Variable_2:0training/SGD/Variable_2/Assigntraining/SGD/Variable_2/read:02training/SGD/Const_2:0
s
training/SGD/Variable_3:0training/SGD/Variable_3/Assigntraining/SGD/Variable_3/read:02training/SGD/Const_3:0
s
training/SGD/Variable_4:0training/SGD/Variable_4/Assigntraining/SGD/Variable_4/read:02training/SGD/Const_4:0
s
training/SGD/Variable_5:0training/SGD/Variable_5/Assigntraining/SGD/Variable_5/read:02training/SGD/Const_5:0
s
training/SGD/Variable_6:0training/SGD/Variable_6/Assigntraining/SGD/Variable_6/read:02training/SGD/Const_6:0
s
training/SGD/Variable_7:0training/SGD/Variable_7/Assigntraining/SGD/Variable_7/read:02training/SGD/Const_7:0
s
training/SGD/Variable_8:0training/SGD/Variable_8/Assigntraining/SGD/Variable_8/read:02training/SGD/Const_8:0
s
training/SGD/Variable_9:0training/SGD/Variable_9/Assigntraining/SGD/Variable_9/read:02training/SGD/Const_9:0
w
training/SGD/Variable_10:0training/SGD/Variable_10/Assigntraining/SGD/Variable_10/read:02training/SGD/Const_10:0
w
training/SGD/Variable_11:0training/SGD/Variable_11/Assigntraining/SGD/Variable_11/read:02training/SGD/Const_11:0
w
training/SGD/Variable_12:0training/SGD/Variable_12/Assigntraining/SGD/Variable_12/read:02training/SGD/Const_12:0
w
training/SGD/Variable_13:0training/SGD/Variable_13/Assigntraining/SGD/Variable_13/read:02training/SGD/Const_13:0
w
training/SGD/Variable_14:0training/SGD/Variable_14/Assigntraining/SGD/Variable_14/read:02training/SGD/Const_14:0
w
training/SGD/Variable_15:0training/SGD/Variable_15/Assigntraining/SGD/Variable_15/read:02training/SGD/Const_15:0�U$a       ���	dwL���A*

val_loss���?�=��       ���	�"wL���A*


acc��?��uu       �	%wL���A*

val_acc�Q?)���       �K"	'wL���A*

loss��?!��       ��2	�TM���A*

val_loss��W?"��x       ��(	�TM���A*


acc�+?5���       `/�#	�TM���A*

val_acc)\/?�       ��-	�TM���A*

loss�r8?���       ��2	?1N���A*

val_loss6l&?O!P       ��(	N1N���A*


accY�K?6%y�       `/�#	B1N���A*

val_acc�GA?S�~       ��-	�1N���A*

lossu��>�xU�       ��2	�mO���A*

val_loss7�?��l       ��(	�pO���A*


acc�(\?�"8&       `/�#	VsO���A*

val_acc�K??��       ��-	�uO���A*

loss���>�͑�       ��2	Q��O���A*

val_loss��>](��       ��(	���O���A*


acc�@g?R��~       `/�#	��O���A*

val_acc��Q?��~       ��-	a��O���A*

loss�c>>v�       ��2	,�P���A*

val_lossH�>i�       ��(	<�P���A*


acc�_l?�B^       `/�#	��P���A*

val_acc=
W?>�9       ��-	��P���A*

loss��1>���G       ��2	#:�Q���A*

val_loss���>�7<D       ��(	!=�Q���A*


accK~q?X�pq       `/�#	`?�Q���A*

val_acc�QX?΍*�       ��-	jA�Q���A*

lossݠ>�>��       ��2	���R���A*

val_loss4,�><α�       ��(	�ÃR���A*


accK~q?�+�7       `/�#	BŃR���A*

val_acc��Y?9���       ��-	�ƃR���A*

loss���=��Q       ��2	��dS���A*

val_loss�y�>�ݢ5       ��(	z�dS���A*


acc�t?&�*x       `/�#	 �dS���A*

val_acc��Y?�/       ��-	��dS���A*

lossn��=��3�       ��2	��IT���A	*

val_loss�ϻ>�� �       ��(	p�IT���A	*


acc�z?�V��       `/�#	��IT���A	*

val_acc��Y?�:��       ��-	��IT���A	*

loss��='8�       ��2	A�.U���A
*

val_lossy�>��i       ��(	p�.U���A
*


acc��{?�6�t       `/�#	��.U���A
*

val_acc�(\?����       ��-	��.U���A
*

loss%��={%�        ��2	��V���A*

val_lossDӰ>�;��       ��(	��V���A*


acc��{?1���       `/�#	׍V���A*

val_acc�p]?Д�1       ��-	ُV���A*

loss�Μ=��p�       ��2	*a�V���A*

val_loss	b�>��       ��(	Rd�V���A*


acc�p}?�U��       `/�#	�f�V���A*

val_acc  `?��q�       ��-	�h�V���A*

loss`�=%���       ��2	�z�W���A*

val_lossv��>�I�       ��(	�}�W���A*


acc�p}?'���       `/�#	��W���A*

val_acc  `?-�L.       ��-	G��W���A*

loss��=��L       ��2	��X���A*

val_loss]��>k:��       ��(	p��X���A*


accK~?����       `/�#	���X���A*

val_acc�Ga?�N#       ��-	���X���A*

lossB�o=��7�       ��2	���Y���A*

val_loss���>L]=)       ��(	���Y���A*


acc�%?*���       `/�#	���Y���A*

val_acc�Ga?Ӕ�       ��-	� �Y���A*

loss��]=Gf�       ��2	�1�Z���A*

val_loss��>�/3       ��(	5�Z���A*


acc�%?�w�       `/�#	l7�Z���A*

val_acc�Ga?WtsF       ��-	�9�Z���A*

loss�nM=L��       ��2	�6r[���A*

val_loss\��>Hg6       ��(	�:r[���A*


acc�%?��,       `/�#	0=r[���A*

val_acc\�b?xi�       ��-	d>r[���A*

loss:<@=�ӟ�       ��2	�\W\���A*

val_lossa��>�w"       ��(	`W\���A*


acc�%?Φn�       `/�#	obW\���A*

val_acc\�b?�@       ��-	�dW\���A*

lossBy4=�Ǳ�       ��2	X�<]���A*

val_loss%��>�N��       ��(	b�<]���A*


acc�%?��       `/�#	��<]���A*

val_acc\�b?p�w~       ��-	��<]���A*

lossx�)=K�       ��2	��!^���A*

val_lossqB�>�4�       ��(	��!^���A*


acc�%?�\+       `/�#	�!^���A*

val_acc\�b?q���       ��-	$�!^���A*

lossy� =�b�       ��2	~�_���A*

val_loss�R�>a��       ��(	�_���A*


acc�%?ę��       `/�#	H�_���A*

val_acc\�b?w:(�       ��-	g�_���A*

loss$=��ܯ       ��2	���_���A*

val_loss3Ӕ>sH�       ��(	l��_���A*


acc�%?�Bi        `/�#	o��_���A*

val_acc\�b?8w�       ��-	R��_���A*

loss��=��s�       ��2	0{�`���A*

val_losspm�>�_��       ��(	}�`���A*


acc�%?Ip�        `/�#	�~�`���A*

val_acc\�b?��r       ��-	��`���A*

loss�7=��       ��2	�~�a���A*

val_loss��>J��A       ��(	���a���A*


acc�%?jA��       `/�#	P��a���A*

val_acc\�b?��	       ��-	���a���A*

loss	A=i��       ��2	���b���A*

val_lossز�>+��f       ��(	z��b���A*


acc�%?=Y�       `/�#	㋼b���A*

val_acc
�c?¨��       ��-	*��b���A*

loss�<b       ��2	���c���A*

val_loss�@�>�{mu       ��(	���c���A*


acc�%?�]"       `/�#	�c���A*

val_acc
�c?��       ��-	���c���A*

loss���<�`�       ��2	t��d���A*

val_loss	�>��q�       ��(	C��d���A*


acc�%?w��{       `/�#	y��d���A*

val_acc
�c?�S��       ��-	�Äd���A*

lossa��<�ũg       ��2	��ge���A*

val_loss��>MS�       ��(	&�ge���A*


acc  �?X��]       `/�#	k�ge���A*

val_acc
�c?�Rg       ��-	��ge���A*

loss���<�ץ{       ��2	سJf���A*

val_loss�+�>��#�       ��(	��Jf���A*


acc  �?T��       `/�#	߸Jf���A*

val_acc
�c?�Y�       ��-	�Jf���A*

loss�J�<mBD       ��2	ݨ-g���A*

val_loss�	�> b�b       ��(	��-g���A*


acc  �?N��       `/�#	��-g���A*

val_acc�e?��       ��-	��-g���A*

lossn&�<�]/       ��2	Ah���A*

val_loss�.�>�gFN       ��(	�h���A*


acc  �?� �6       `/�#	/	h���A*

val_acc�e?��*�       ��-	^
h���A*

loss���<�� ]       ��2	�=�h���A *

val_loss�:�>���       ��(	�@�h���A *


acc  �?Bc       `/�#	C�h���A *

val_acc�e?�_��       ��-	DE�h���A *

loss���<�w�       ��2	V��i���A!*

val_lossV��>X[��       ��(	T��i���A!*


acc  �?<Э$       `/�#	���i���A!*

val_accfff?k�Ř       ��-	���i���A!*

loss�&�<F�       ��2	�?�j���A"*

val_loss�܇>*�c       ��(	�B�j���A"*


acc  �?�A��       `/�#	�D�j���A"*

val_accfff?����       ��-	(G�j���A"*

loss�Y�<�ͨ       ��2	U�k���A#*

val_loss1�>W�o�       ��(	�V�k���A#*


acc  �?�\2U       `/�#	�W�k���A#*

val_accfff?�ĂF       ��-	�X�k���A#*

loss|�<���       ��2	&��l���A$*

val_loss@u�>F/��       ��(	��l���A$*


acc  �?M�M       `/�#	]��l���A$*

val_acc�g?b�<�       ��-	���l���A$*

loss��<Q��       ��2	�Xcm���A%*

val_loss�ׅ>|P6�       ��(	�Zcm���A%*


acc  �?��;g       `/�#	\cm���A%*

val_acc��h?\ɣ       ��-	c]cm���A%*

loss�^�<��Xi       ��2	wGn���A&*

val_lossPN�>GQP       ��(	4Gn���A&*


acc  �?�3	       `/�#	|Gn���A&*

val_acc��h?�C��       ��-	Gn���A&*

lossx�<����       ��2	��)o���A'*

val_loss���>v2T�       ��(	��)o���A'*


acc  �?C��       `/�#	n�)o���A'*

val_acc��h?..��       ��-	��)o���A'*

loss97�<j��       ��2	�p���A(*

val_loss�>�ykP       ��(	��p���A(*


acc  �?C��       `/�#	�p���A(*

val_acc��h?�؎�       ��-	P�p���A(*

lossM�<��       ��2	 ^�p���A)*

val_loss�1�>S-��       ��(	�_�p���A)*


acc  �?�`ƅ       `/�#	�`�p���A)*

val_acc��h?R�cC       ��-	b�p���A)*

loss���<�Hy       ��2	��q���A**

val_loss���>�?pw       ��(	���q���A**


acc  �?�2�       `/�#	���q���A**

val_acc��h?�F�E       ��-	���q���A**

loss5��<�__       ��2	}ܵr���A+*

val_loss��>餏�       ��(	�޵r���A+*


acc  �?xO]       `/�#	��r���A+*

val_acc��h?y�R�       ��-	N�r���A+*

lossY��<!�T�       ��2	�ݘs���A,*

val_loss�x�>S�>a       ��(	�ߘs���A,*


acc  �?�>)<       `/�#	���s���A,*

val_acc��h?.�p       ��-	�s���A,*

loss�-|<i�ݩ       ��2	l�{t���A-*

val_loss��>~dm       ��(	��{t���A-*


acc  �?Y�k�       `/�#	��{t���A-*

val_acc��h?iQ�B       ��-	-�{t���A-*

lossuu<*4��       ��2	�]u���A.*

val_loss^B�>a���       ��(	-�]u���A.*


acc  �?���       `/�#	��]u���A.*

val_acc�g?5�X       ��-	ݮ]u���A.*

loss�io<�h&j       ��2	y^Av���A/*

val_loss.�>Е�]       ��(	/aAv���A/*


acc  �?-X�u       `/�#	 cAv���A/*

val_acc�g?5�8�       ��-	�dAv���A/*

loss��h<-���       ��2	�j%w���A0*

val_loss�~>�u8�       ��(	�l%w���A0*


acc  �?F��       `/�#	Ln%w���A0*

val_acc�g?	0>       ��-	�o%w���A0*

loss��b<';\       ��2	��x���A1*

val_loss�Q~>�Y(�       ��(	ːx���A1*


acc  �?\��       `/�#	\�x���A1*

val_acc�g?k[�k       ��-	ȓx���A1*

lossV�]<���B       ��2	�b�x���A2*

val_lossG[}>C�#�       ��(	�e�x���A2*


acc  �?T3��       `/�#	�g�x���A2*

val_acc�g?B��d       ��-	j�x���A2*

loss�WX<[��       ��2	�o�y���A3*

val_loss��|>O`�       ��(	�r�y���A3*


acc  �?I}V       `/�#	�t�y���A3*

val_acc�g? V�=       ��-	[v�y���A3*

loss��R≮qP       ��2	���z���A4*

val_loss-�{>���       ��(	��z���A4*


acc  �?�H6       `/�#	��z���A4*

val_acc�g?f�/       ��-	.��z���A4*

loss��M<xJ�
       ��2	ɋ�{���A5*

val_loss��z>j��       ��(	C��{���A5*


acc  �?N֖       `/�#	[��{���A5*

val_acc�g?�<       ��-	z��{���A5*

loss�xI<<J4@       ��2	}w|���A6*

val_loss4Kz>L~R�       ��(	�~w|���A6*


acc  �?)G}3       `/�#	 �w|���A6*

val_acc�g?t���       ��-	`�w|���A6*

loss�D<^        ��2	�^Y}���A7*

val_lossۣy>�       ��(	�aY}���A7*


acc  �?���       `/�#	�cY}���A7*

val_acc�g?�Qv7       ��-	(fY}���A7*

loss��@<��2�       ��2	��<~���A8*

val_losss�x>�zML       ��(	��<~���A8*


acc  �?���       `/�#	��<~���A8*

val_acc��h?ŋ�K       ��-	�<~���A8*

loss@=<n�GL       ��2	� ���A9*

val_loss��w>	�       ��(	� ���A9*


acc  �?	�B�       `/�#	�� ���A9*

val_acc��h?6m�       ��-	É ���A9*

lossN�8<1cl       ��2	�0����A:*

val_loss�=w>�T��       ��(	63����A:*


acc  �?�#?       `/�#	5����A:*

val_acc��h?���       ��-	�6����A:*

lossX�4<�7�o       ��2	B�倡��A;*

val_loss��v>`A�k       ��(	H�倡��A;*


acc  �?Jt
q       `/�#	��倡��A;*

val_acc��h?���       ��-	
�倡��A;*

lossP?1<��U�       ��2	#DɁ���A<*

val_lossYMv>k�6�       ��(	)GɁ���A<*


acc  �?�SN�       `/�#	|IɁ���A<*

val_acc��h?����       ��-	�KɁ���A<*

loss��-<㓌i       ��2	�g�����A=*

val_lossԦu>��zq       ��(	�j�����A=*


acc  �?k���       `/�#	+m�����A=*

val_acc��h?lN�_       ��-	`o�����A=*

loss\�*<AcP       ��2	@厃���A>*

val_loss!u>�XWh       ��(	I莃���A>*


acc  �?��d�       `/�#	�ꎃ���A>*

val_acc��h?���       ��-	펃���A>*

loss9'<�1p       ��2	�Nr����A?*

val_loss[�t>��6�       ��(	�Qr����A?*


acc  �?&t/       `/�#	Tr����A?*

val_acc��h?֤�       ��-	>Vr����A?*

lossh�#<��V&       ��2	�8U����A@*

val_loss>t>Qe��       ��(	0:U����A@*


acc  �?L�^       `/�#	I;U����A@*

val_acc��h?�E$       ��-	N<U����A@*

loss!<�M       ��2	D8����AA*

val_loss�s>!!_H       ��(	�E8����AA*


acc  �?TSO       `/�#	vG8����AA*

val_acc��h?؃�o       ��-	�H8����AA*

loss~<<��ɥ       ��2	�#����AB*

val_loss��r>Y���       ��(	H&����AB*


acc  �?={�       `/�#	z(����AB*

val_acc��h?�X��       ��-	�*����AB*

loss�s<^Ѧ�       ��2	;������AC*

val_lossAzr>n�^N       ��(	������AC*


acc  �?��       `/�#	n������AC*

val_acc��h?T�:�       ��-	]������AC*

loss��<D�K�       ��2	�2�����AD*

val_loss'�q>��W�       ��(	'6�����AD*


acc  �?zNya       `/�#	�8�����AD*

val_acc��h?R��y       ��-	�:�����AD*

loss9<n(       ��2	�É���AE*

val_loss�Xq>���       ��(	�É���AE*


acc  �?;�a$       `/�#	hÉ���AE*

val_acc��h?B�6       ��-	�É���AE*

loss:j<�K�       ��2	9ͥ����AF*

val_loss��p>���       ��(	PХ����AF*


acc  �?�]��       `/�#	`ӥ����AF*

val_acc��h?�~�       ��-	�ե����AF*

loss��<���       ��2	gV�����AG*

val_lossJzp>��q�       ��(	vY�����AG*


acc  �?���-       `/�#	�[�����AG*

val_acc��h?M�~[       ��-	�]�����AG*

loss�n<��[       ��2	^�j����AH*

val_loss�p>C���       ��(	ik����AH*


acc  �?���M       `/�#	�k����AH*

val_acc��h?*_T�       ��-	�k����AH*

lossVA<�[Y�       ��2	��M����AI*

val_lossJ�o>9G��       ��(	��M����AI*


acc  �?�b�       `/�#	=�M����AI*

val_acc��h?�j�N       ��-	f�M����AI*

lossv�	<L��d       ��2	�j1����AJ*

val_loss?@o>5�\z       ��(	l1����AJ*


acc  �?���       `/�#	1m1����AJ*

val_acc��h?�j`\       ��-	qn1����AJ*

loss��<H!