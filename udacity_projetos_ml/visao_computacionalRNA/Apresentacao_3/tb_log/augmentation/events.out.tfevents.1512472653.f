       �K"	  @���Abrain.Event:2��R�u     ��ϋ		�@���A"��	
�
input_1Placeholder*A
_output_shapes/
-:+���������������������������*
dtype0*6
shape-:+���������������������������
z
!block1_conv1/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   
d
block1_conv1/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *8J̽
d
block1_conv1/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *8J�=
�
)block1_conv1/random_uniform/RandomUniformRandomUniform!block1_conv1/random_uniform/shape*
seed2�ϥ*
dtype0*&
_output_shapes
:@*
T0*
seed���)
�
block1_conv1/random_uniform/subSubblock1_conv1/random_uniform/maxblock1_conv1/random_uniform/min*
_output_shapes
: *
T0
�
block1_conv1/random_uniform/mulMul)block1_conv1/random_uniform/RandomUniformblock1_conv1/random_uniform/sub*&
_output_shapes
:@*
T0
�
block1_conv1/random_uniformAddblock1_conv1/random_uniform/mulblock1_conv1/random_uniform/min*&
_output_shapes
:@*
T0
�
block1_conv1/kernel
VariableV2*
	container *
shared_name *
dtype0*&
_output_shapes
:@*
shape:@
�
block1_conv1/kernel/AssignAssignblock1_conv1/kernelblock1_conv1/random_uniform*
validate_shape(*
use_locking(*&
_output_shapes
:@*
T0*&
_class
loc:@block1_conv1/kernel
�
block1_conv1/kernel/readIdentityblock1_conv1/kernel*&
_class
loc:@block1_conv1/kernel*
T0*&
_output_shapes
:@
_
block1_conv1/ConstConst*
_output_shapes
:@*
dtype0*
valueB@*    
}
block1_conv1/bias
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes
:@*
shape:@
�
block1_conv1/bias/AssignAssignblock1_conv1/biasblock1_conv1/Const*
validate_shape(*
use_locking(*
_output_shapes
:@*
T0*$
_class
loc:@block1_conv1/bias
�
block1_conv1/bias/readIdentityblock1_conv1/bias*$
_class
loc:@block1_conv1/bias*
T0*
_output_shapes
:@
w
&block1_conv1/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block1_conv1/convolutionConv2Dinput_1block1_conv1/kernel/read*A
_output_shapes/
-:+���������������������������@*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*
strides

�
block1_conv1/BiasAddBiasAddblock1_conv1/convolutionblock1_conv1/bias/read*A
_output_shapes/
-:+���������������������������@*
data_formatNHWC*
T0
{
block1_conv1/ReluRelublock1_conv1/BiasAdd*A
_output_shapes/
-:+���������������������������@*
T0
z
!block1_conv2/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      @   @   
d
block1_conv2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:͓�
d
block1_conv2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:͓=
�
)block1_conv2/random_uniform/RandomUniformRandomUniform!block1_conv2/random_uniform/shape*
seed2���*
dtype0*&
_output_shapes
:@@*
T0*
seed���)
�
block1_conv2/random_uniform/subSubblock1_conv2/random_uniform/maxblock1_conv2/random_uniform/min*
_output_shapes
: *
T0
�
block1_conv2/random_uniform/mulMul)block1_conv2/random_uniform/RandomUniformblock1_conv2/random_uniform/sub*&
_output_shapes
:@@*
T0
�
block1_conv2/random_uniformAddblock1_conv2/random_uniform/mulblock1_conv2/random_uniform/min*&
_output_shapes
:@@*
T0
�
block1_conv2/kernel
VariableV2*
	container *
shared_name *
dtype0*&
_output_shapes
:@@*
shape:@@
�
block1_conv2/kernel/AssignAssignblock1_conv2/kernelblock1_conv2/random_uniform*
validate_shape(*
use_locking(*&
_output_shapes
:@@*
T0*&
_class
loc:@block1_conv2/kernel
�
block1_conv2/kernel/readIdentityblock1_conv2/kernel*&
_class
loc:@block1_conv2/kernel*
T0*&
_output_shapes
:@@
_
block1_conv2/ConstConst*
_output_shapes
:@*
dtype0*
valueB@*    
}
block1_conv2/bias
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes
:@*
shape:@
�
block1_conv2/bias/AssignAssignblock1_conv2/biasblock1_conv2/Const*
validate_shape(*
use_locking(*
_output_shapes
:@*
T0*$
_class
loc:@block1_conv2/bias
�
block1_conv2/bias/readIdentityblock1_conv2/bias*$
_class
loc:@block1_conv2/bias*
T0*
_output_shapes
:@
w
&block1_conv2/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block1_conv2/convolutionConv2Dblock1_conv1/Relublock1_conv2/kernel/read*A
_output_shapes/
-:+���������������������������@*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*
strides

�
block1_conv2/BiasAddBiasAddblock1_conv2/convolutionblock1_conv2/bias/read*A
_output_shapes/
-:+���������������������������@*
data_formatNHWC*
T0
{
block1_conv2/ReluRelublock1_conv2/BiasAdd*A
_output_shapes/
-:+���������������������������@*
T0
�
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu*A
_output_shapes/
-:+���������������������������@*
data_formatNHWC*
paddingVALID*
T0*
ksize
*
strides

z
!block2_conv1/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      @   �   
d
block2_conv1/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *�[q�
d
block2_conv1/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *�[q=
�
)block2_conv1/random_uniform/RandomUniformRandomUniform!block2_conv1/random_uniform/shape*
seed2س�*
dtype0*'
_output_shapes
:@�*
T0*
seed���)
�
block2_conv1/random_uniform/subSubblock2_conv1/random_uniform/maxblock2_conv1/random_uniform/min*
_output_shapes
: *
T0
�
block2_conv1/random_uniform/mulMul)block2_conv1/random_uniform/RandomUniformblock2_conv1/random_uniform/sub*'
_output_shapes
:@�*
T0
�
block2_conv1/random_uniformAddblock2_conv1/random_uniform/mulblock2_conv1/random_uniform/min*'
_output_shapes
:@�*
T0
�
block2_conv1/kernel
VariableV2*
	container *
shared_name *
dtype0*'
_output_shapes
:@�*
shape:@�
�
block2_conv1/kernel/AssignAssignblock2_conv1/kernelblock2_conv1/random_uniform*
validate_shape(*
use_locking(*'
_output_shapes
:@�*
T0*&
_class
loc:@block2_conv1/kernel
�
block2_conv1/kernel/readIdentityblock2_conv1/kernel*&
_class
loc:@block2_conv1/kernel*
T0*'
_output_shapes
:@�
a
block2_conv1/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block2_conv1/bias
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
block2_conv1/bias/AssignAssignblock2_conv1/biasblock2_conv1/Const*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*$
_class
loc:@block2_conv1/bias
�
block2_conv1/bias/readIdentityblock2_conv1/bias*$
_class
loc:@block2_conv1/bias*
T0*
_output_shapes	
:�
w
&block2_conv1/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block2_conv1/convolutionConv2Dblock1_pool/MaxPoolblock2_conv1/kernel/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*
strides

�
block2_conv1/BiasAddBiasAddblock2_conv1/convolutionblock2_conv1/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block2_conv1/ReluRelublock2_conv1/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
z
!block2_conv2/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      �   �   
d
block2_conv2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *�Q�
d
block2_conv2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *�Q=
�
)block2_conv2/random_uniform/RandomUniformRandomUniform!block2_conv2/random_uniform/shape*
seed2�d*
dtype0*(
_output_shapes
:��*
T0*
seed���)
�
block2_conv2/random_uniform/subSubblock2_conv2/random_uniform/maxblock2_conv2/random_uniform/min*
_output_shapes
: *
T0
�
block2_conv2/random_uniform/mulMul)block2_conv2/random_uniform/RandomUniformblock2_conv2/random_uniform/sub*(
_output_shapes
:��*
T0
�
block2_conv2/random_uniformAddblock2_conv2/random_uniform/mulblock2_conv2/random_uniform/min*(
_output_shapes
:��*
T0
�
block2_conv2/kernel
VariableV2*
	container *
shared_name *
dtype0*(
_output_shapes
:��*
shape:��
�
block2_conv2/kernel/AssignAssignblock2_conv2/kernelblock2_conv2/random_uniform*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*&
_class
loc:@block2_conv2/kernel
�
block2_conv2/kernel/readIdentityblock2_conv2/kernel*&
_class
loc:@block2_conv2/kernel*
T0*(
_output_shapes
:��
a
block2_conv2/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block2_conv2/bias
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
block2_conv2/bias/AssignAssignblock2_conv2/biasblock2_conv2/Const*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*$
_class
loc:@block2_conv2/bias
�
block2_conv2/bias/readIdentityblock2_conv2/bias*$
_class
loc:@block2_conv2/bias*
T0*
_output_shapes	
:�
w
&block2_conv2/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block2_conv2/convolutionConv2Dblock2_conv1/Relublock2_conv2/kernel/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*
strides

�
block2_conv2/BiasAddBiasAddblock2_conv2/convolutionblock2_conv2/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block2_conv2/ReluRelublock2_conv2/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
�
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
paddingVALID*
T0*
ksize
*
strides

z
!block3_conv1/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      �      
d
block3_conv1/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *��*�
d
block3_conv1/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��*=
�
)block3_conv1/random_uniform/RandomUniformRandomUniform!block3_conv1/random_uniform/shape*
seed2��*
dtype0*(
_output_shapes
:��*
T0*
seed���)
�
block3_conv1/random_uniform/subSubblock3_conv1/random_uniform/maxblock3_conv1/random_uniform/min*
_output_shapes
: *
T0
�
block3_conv1/random_uniform/mulMul)block3_conv1/random_uniform/RandomUniformblock3_conv1/random_uniform/sub*(
_output_shapes
:��*
T0
�
block3_conv1/random_uniformAddblock3_conv1/random_uniform/mulblock3_conv1/random_uniform/min*(
_output_shapes
:��*
T0
�
block3_conv1/kernel
VariableV2*
	container *
shared_name *
dtype0*(
_output_shapes
:��*
shape:��
�
block3_conv1/kernel/AssignAssignblock3_conv1/kernelblock3_conv1/random_uniform*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*&
_class
loc:@block3_conv1/kernel
�
block3_conv1/kernel/readIdentityblock3_conv1/kernel*&
_class
loc:@block3_conv1/kernel*
T0*(
_output_shapes
:��
a
block3_conv1/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block3_conv1/bias
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
block3_conv1/bias/AssignAssignblock3_conv1/biasblock3_conv1/Const*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*$
_class
loc:@block3_conv1/bias
�
block3_conv1/bias/readIdentityblock3_conv1/bias*$
_class
loc:@block3_conv1/bias*
T0*
_output_shapes	
:�
w
&block3_conv1/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block3_conv1/convolutionConv2Dblock2_pool/MaxPoolblock3_conv1/kernel/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*
strides

�
block3_conv1/BiasAddBiasAddblock3_conv1/convolutionblock3_conv1/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block3_conv1/ReluRelublock3_conv1/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
z
!block3_conv2/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
d
block3_conv2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:��
d
block3_conv2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:�=
�
)block3_conv2/random_uniform/RandomUniformRandomUniform!block3_conv2/random_uniform/shape*
seed2܄�*
dtype0*(
_output_shapes
:��*
T0*
seed���)
�
block3_conv2/random_uniform/subSubblock3_conv2/random_uniform/maxblock3_conv2/random_uniform/min*
_output_shapes
: *
T0
�
block3_conv2/random_uniform/mulMul)block3_conv2/random_uniform/RandomUniformblock3_conv2/random_uniform/sub*(
_output_shapes
:��*
T0
�
block3_conv2/random_uniformAddblock3_conv2/random_uniform/mulblock3_conv2/random_uniform/min*(
_output_shapes
:��*
T0
�
block3_conv2/kernel
VariableV2*
	container *
shared_name *
dtype0*(
_output_shapes
:��*
shape:��
�
block3_conv2/kernel/AssignAssignblock3_conv2/kernelblock3_conv2/random_uniform*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*&
_class
loc:@block3_conv2/kernel
�
block3_conv2/kernel/readIdentityblock3_conv2/kernel*&
_class
loc:@block3_conv2/kernel*
T0*(
_output_shapes
:��
a
block3_conv2/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block3_conv2/bias
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
block3_conv2/bias/AssignAssignblock3_conv2/biasblock3_conv2/Const*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*$
_class
loc:@block3_conv2/bias
�
block3_conv2/bias/readIdentityblock3_conv2/bias*$
_class
loc:@block3_conv2/bias*
T0*
_output_shapes	
:�
w
&block3_conv2/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block3_conv2/convolutionConv2Dblock3_conv1/Relublock3_conv2/kernel/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*
strides

�
block3_conv2/BiasAddBiasAddblock3_conv2/convolutionblock3_conv2/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block3_conv2/ReluRelublock3_conv2/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
z
!block3_conv3/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
d
block3_conv3/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:��
d
block3_conv3/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:�=
�
)block3_conv3/random_uniform/RandomUniformRandomUniform!block3_conv3/random_uniform/shape*
seed2���*
dtype0*(
_output_shapes
:��*
T0*
seed���)
�
block3_conv3/random_uniform/subSubblock3_conv3/random_uniform/maxblock3_conv3/random_uniform/min*
_output_shapes
: *
T0
�
block3_conv3/random_uniform/mulMul)block3_conv3/random_uniform/RandomUniformblock3_conv3/random_uniform/sub*(
_output_shapes
:��*
T0
�
block3_conv3/random_uniformAddblock3_conv3/random_uniform/mulblock3_conv3/random_uniform/min*(
_output_shapes
:��*
T0
�
block3_conv3/kernel
VariableV2*
	container *
shared_name *
dtype0*(
_output_shapes
:��*
shape:��
�
block3_conv3/kernel/AssignAssignblock3_conv3/kernelblock3_conv3/random_uniform*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*&
_class
loc:@block3_conv3/kernel
�
block3_conv3/kernel/readIdentityblock3_conv3/kernel*&
_class
loc:@block3_conv3/kernel*
T0*(
_output_shapes
:��
a
block3_conv3/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block3_conv3/bias
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
block3_conv3/bias/AssignAssignblock3_conv3/biasblock3_conv3/Const*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*$
_class
loc:@block3_conv3/bias
�
block3_conv3/bias/readIdentityblock3_conv3/bias*$
_class
loc:@block3_conv3/bias*
T0*
_output_shapes	
:�
w
&block3_conv3/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block3_conv3/convolutionConv2Dblock3_conv2/Relublock3_conv3/kernel/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*
strides

�
block3_conv3/BiasAddBiasAddblock3_conv3/convolutionblock3_conv3/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block3_conv3/ReluRelublock3_conv3/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
�
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
paddingVALID*
T0*
ksize
*
strides

z
!block4_conv1/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
d
block4_conv1/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *�[�
d
block4_conv1/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *�[�<
�
)block4_conv1/random_uniform/RandomUniformRandomUniform!block4_conv1/random_uniform/shape*
seed2���*
dtype0*(
_output_shapes
:��*
T0*
seed���)
�
block4_conv1/random_uniform/subSubblock4_conv1/random_uniform/maxblock4_conv1/random_uniform/min*
_output_shapes
: *
T0
�
block4_conv1/random_uniform/mulMul)block4_conv1/random_uniform/RandomUniformblock4_conv1/random_uniform/sub*(
_output_shapes
:��*
T0
�
block4_conv1/random_uniformAddblock4_conv1/random_uniform/mulblock4_conv1/random_uniform/min*(
_output_shapes
:��*
T0
�
block4_conv1/kernel
VariableV2*
	container *
shared_name *
dtype0*(
_output_shapes
:��*
shape:��
�
block4_conv1/kernel/AssignAssignblock4_conv1/kernelblock4_conv1/random_uniform*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*&
_class
loc:@block4_conv1/kernel
�
block4_conv1/kernel/readIdentityblock4_conv1/kernel*&
_class
loc:@block4_conv1/kernel*
T0*(
_output_shapes
:��
a
block4_conv1/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block4_conv1/bias
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
block4_conv1/bias/AssignAssignblock4_conv1/biasblock4_conv1/Const*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*$
_class
loc:@block4_conv1/bias
�
block4_conv1/bias/readIdentityblock4_conv1/bias*$
_class
loc:@block4_conv1/bias*
T0*
_output_shapes	
:�
w
&block4_conv1/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block4_conv1/convolutionConv2Dblock3_pool/MaxPoolblock4_conv1/kernel/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*
strides

�
block4_conv1/BiasAddBiasAddblock4_conv1/convolutionblock4_conv1/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block4_conv1/ReluRelublock4_conv1/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
z
!block4_conv2/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
d
block4_conv2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *�Ѽ
d
block4_conv2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��<
�
)block4_conv2/random_uniform/RandomUniformRandomUniform!block4_conv2/random_uniform/shape*
seed2���*
dtype0*(
_output_shapes
:��*
T0*
seed���)
�
block4_conv2/random_uniform/subSubblock4_conv2/random_uniform/maxblock4_conv2/random_uniform/min*
_output_shapes
: *
T0
�
block4_conv2/random_uniform/mulMul)block4_conv2/random_uniform/RandomUniformblock4_conv2/random_uniform/sub*(
_output_shapes
:��*
T0
�
block4_conv2/random_uniformAddblock4_conv2/random_uniform/mulblock4_conv2/random_uniform/min*(
_output_shapes
:��*
T0
�
block4_conv2/kernel
VariableV2*
	container *
shared_name *
dtype0*(
_output_shapes
:��*
shape:��
�
block4_conv2/kernel/AssignAssignblock4_conv2/kernelblock4_conv2/random_uniform*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*&
_class
loc:@block4_conv2/kernel
�
block4_conv2/kernel/readIdentityblock4_conv2/kernel*&
_class
loc:@block4_conv2/kernel*
T0*(
_output_shapes
:��
a
block4_conv2/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block4_conv2/bias
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
block4_conv2/bias/AssignAssignblock4_conv2/biasblock4_conv2/Const*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*$
_class
loc:@block4_conv2/bias
�
block4_conv2/bias/readIdentityblock4_conv2/bias*$
_class
loc:@block4_conv2/bias*
T0*
_output_shapes	
:�
w
&block4_conv2/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block4_conv2/convolutionConv2Dblock4_conv1/Relublock4_conv2/kernel/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*
strides

�
block4_conv2/BiasAddBiasAddblock4_conv2/convolutionblock4_conv2/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block4_conv2/ReluRelublock4_conv2/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
z
!block4_conv3/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
d
block4_conv3/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *�Ѽ
d
block4_conv3/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��<
�
)block4_conv3/random_uniform/RandomUniformRandomUniform!block4_conv3/random_uniform/shape*
seed2��!*
dtype0*(
_output_shapes
:��*
T0*
seed���)
�
block4_conv3/random_uniform/subSubblock4_conv3/random_uniform/maxblock4_conv3/random_uniform/min*
_output_shapes
: *
T0
�
block4_conv3/random_uniform/mulMul)block4_conv3/random_uniform/RandomUniformblock4_conv3/random_uniform/sub*(
_output_shapes
:��*
T0
�
block4_conv3/random_uniformAddblock4_conv3/random_uniform/mulblock4_conv3/random_uniform/min*(
_output_shapes
:��*
T0
�
block4_conv3/kernel
VariableV2*
	container *
shared_name *
dtype0*(
_output_shapes
:��*
shape:��
�
block4_conv3/kernel/AssignAssignblock4_conv3/kernelblock4_conv3/random_uniform*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*&
_class
loc:@block4_conv3/kernel
�
block4_conv3/kernel/readIdentityblock4_conv3/kernel*&
_class
loc:@block4_conv3/kernel*
T0*(
_output_shapes
:��
a
block4_conv3/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block4_conv3/bias
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
block4_conv3/bias/AssignAssignblock4_conv3/biasblock4_conv3/Const*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*$
_class
loc:@block4_conv3/bias
�
block4_conv3/bias/readIdentityblock4_conv3/bias*$
_class
loc:@block4_conv3/bias*
T0*
_output_shapes	
:�
w
&block4_conv3/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block4_conv3/convolutionConv2Dblock4_conv2/Relublock4_conv3/kernel/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*
strides

�
block4_conv3/BiasAddBiasAddblock4_conv3/convolutionblock4_conv3/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block4_conv3/ReluRelublock4_conv3/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
�
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
paddingVALID*
T0*
ksize
*
strides

z
!block5_conv1/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
d
block5_conv1/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *�Ѽ
d
block5_conv1/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��<
�
)block5_conv1/random_uniform/RandomUniformRandomUniform!block5_conv1/random_uniform/shape*
seed2��*
dtype0*(
_output_shapes
:��*
T0*
seed���)
�
block5_conv1/random_uniform/subSubblock5_conv1/random_uniform/maxblock5_conv1/random_uniform/min*
_output_shapes
: *
T0
�
block5_conv1/random_uniform/mulMul)block5_conv1/random_uniform/RandomUniformblock5_conv1/random_uniform/sub*(
_output_shapes
:��*
T0
�
block5_conv1/random_uniformAddblock5_conv1/random_uniform/mulblock5_conv1/random_uniform/min*(
_output_shapes
:��*
T0
�
block5_conv1/kernel
VariableV2*
	container *
shared_name *
dtype0*(
_output_shapes
:��*
shape:��
�
block5_conv1/kernel/AssignAssignblock5_conv1/kernelblock5_conv1/random_uniform*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*&
_class
loc:@block5_conv1/kernel
�
block5_conv1/kernel/readIdentityblock5_conv1/kernel*&
_class
loc:@block5_conv1/kernel*
T0*(
_output_shapes
:��
a
block5_conv1/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block5_conv1/bias
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
block5_conv1/bias/AssignAssignblock5_conv1/biasblock5_conv1/Const*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*$
_class
loc:@block5_conv1/bias
�
block5_conv1/bias/readIdentityblock5_conv1/bias*$
_class
loc:@block5_conv1/bias*
T0*
_output_shapes	
:�
w
&block5_conv1/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block5_conv1/convolutionConv2Dblock4_pool/MaxPoolblock5_conv1/kernel/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*
strides

�
block5_conv1/BiasAddBiasAddblock5_conv1/convolutionblock5_conv1/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block5_conv1/ReluRelublock5_conv1/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
z
!block5_conv2/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
d
block5_conv2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *�Ѽ
d
block5_conv2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��<
�
)block5_conv2/random_uniform/RandomUniformRandomUniform!block5_conv2/random_uniform/shape*
seed2���*
dtype0*(
_output_shapes
:��*
T0*
seed���)
�
block5_conv2/random_uniform/subSubblock5_conv2/random_uniform/maxblock5_conv2/random_uniform/min*
_output_shapes
: *
T0
�
block5_conv2/random_uniform/mulMul)block5_conv2/random_uniform/RandomUniformblock5_conv2/random_uniform/sub*(
_output_shapes
:��*
T0
�
block5_conv2/random_uniformAddblock5_conv2/random_uniform/mulblock5_conv2/random_uniform/min*(
_output_shapes
:��*
T0
�
block5_conv2/kernel
VariableV2*
	container *
shared_name *
dtype0*(
_output_shapes
:��*
shape:��
�
block5_conv2/kernel/AssignAssignblock5_conv2/kernelblock5_conv2/random_uniform*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*&
_class
loc:@block5_conv2/kernel
�
block5_conv2/kernel/readIdentityblock5_conv2/kernel*&
_class
loc:@block5_conv2/kernel*
T0*(
_output_shapes
:��
a
block5_conv2/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block5_conv2/bias
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
block5_conv2/bias/AssignAssignblock5_conv2/biasblock5_conv2/Const*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*$
_class
loc:@block5_conv2/bias
�
block5_conv2/bias/readIdentityblock5_conv2/bias*$
_class
loc:@block5_conv2/bias*
T0*
_output_shapes	
:�
w
&block5_conv2/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block5_conv2/convolutionConv2Dblock5_conv1/Relublock5_conv2/kernel/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*
strides

�
block5_conv2/BiasAddBiasAddblock5_conv2/convolutionblock5_conv2/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block5_conv2/ReluRelublock5_conv2/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
z
!block5_conv3/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
d
block5_conv3/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *�Ѽ
d
block5_conv3/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��<
�
)block5_conv3/random_uniform/RandomUniformRandomUniform!block5_conv3/random_uniform/shape*
seed2��%*
dtype0*(
_output_shapes
:��*
T0*
seed���)
�
block5_conv3/random_uniform/subSubblock5_conv3/random_uniform/maxblock5_conv3/random_uniform/min*
_output_shapes
: *
T0
�
block5_conv3/random_uniform/mulMul)block5_conv3/random_uniform/RandomUniformblock5_conv3/random_uniform/sub*(
_output_shapes
:��*
T0
�
block5_conv3/random_uniformAddblock5_conv3/random_uniform/mulblock5_conv3/random_uniform/min*(
_output_shapes
:��*
T0
�
block5_conv3/kernel
VariableV2*
	container *
shared_name *
dtype0*(
_output_shapes
:��*
shape:��
�
block5_conv3/kernel/AssignAssignblock5_conv3/kernelblock5_conv3/random_uniform*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*&
_class
loc:@block5_conv3/kernel
�
block5_conv3/kernel/readIdentityblock5_conv3/kernel*&
_class
loc:@block5_conv3/kernel*
T0*(
_output_shapes
:��
a
block5_conv3/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block5_conv3/bias
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
block5_conv3/bias/AssignAssignblock5_conv3/biasblock5_conv3/Const*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*$
_class
loc:@block5_conv3/bias
�
block5_conv3/bias/readIdentityblock5_conv3/bias*$
_class
loc:@block5_conv3/bias*
T0*
_output_shapes	
:�
w
&block5_conv3/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block5_conv3/convolutionConv2Dblock5_conv2/Relublock5_conv3/kernel/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*
strides

�
block5_conv3/BiasAddBiasAddblock5_conv3/convolutionblock5_conv3/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block5_conv3/ReluRelublock5_conv3/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
�
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
paddingVALID*
T0*
ksize
*
strides

l
PlaceholderPlaceholder*&
_output_shapes
:@*
dtype0*
shape:@
�
AssignAssignblock1_conv1/kernelPlaceholder*
validate_shape(*
use_locking( *&
_output_shapes
:@*
T0*&
_class
loc:@block1_conv1/kernel
V
Placeholder_1Placeholder*
_output_shapes
:@*
dtype0*
shape:@
�
Assign_1Assignblock1_conv1/biasPlaceholder_1*
validate_shape(*
use_locking( *
_output_shapes
:@*
T0*$
_class
loc:@block1_conv1/bias
n
Placeholder_2Placeholder*&
_output_shapes
:@@*
dtype0*
shape:@@
�
Assign_2Assignblock1_conv2/kernelPlaceholder_2*
validate_shape(*
use_locking( *&
_output_shapes
:@@*
T0*&
_class
loc:@block1_conv2/kernel
V
Placeholder_3Placeholder*
_output_shapes
:@*
dtype0*
shape:@
�
Assign_3Assignblock1_conv2/biasPlaceholder_3*
validate_shape(*
use_locking( *
_output_shapes
:@*
T0*$
_class
loc:@block1_conv2/bias
p
Placeholder_4Placeholder*'
_output_shapes
:@�*
dtype0*
shape:@�
�
Assign_4Assignblock2_conv1/kernelPlaceholder_4*
validate_shape(*
use_locking( *'
_output_shapes
:@�*
T0*&
_class
loc:@block2_conv1/kernel
X
Placeholder_5Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
Assign_5Assignblock2_conv1/biasPlaceholder_5*
validate_shape(*
use_locking( *
_output_shapes	
:�*
T0*$
_class
loc:@block2_conv1/bias
r
Placeholder_6Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
Assign_6Assignblock2_conv2/kernelPlaceholder_6*
validate_shape(*
use_locking( *(
_output_shapes
:��*
T0*&
_class
loc:@block2_conv2/kernel
X
Placeholder_7Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
Assign_7Assignblock2_conv2/biasPlaceholder_7*
validate_shape(*
use_locking( *
_output_shapes	
:�*
T0*$
_class
loc:@block2_conv2/bias
r
Placeholder_8Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
Assign_8Assignblock3_conv1/kernelPlaceholder_8*
validate_shape(*
use_locking( *(
_output_shapes
:��*
T0*&
_class
loc:@block3_conv1/kernel
X
Placeholder_9Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
Assign_9Assignblock3_conv1/biasPlaceholder_9*
validate_shape(*
use_locking( *
_output_shapes	
:�*
T0*$
_class
loc:@block3_conv1/bias
s
Placeholder_10Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
	Assign_10Assignblock3_conv2/kernelPlaceholder_10*
validate_shape(*
use_locking( *(
_output_shapes
:��*
T0*&
_class
loc:@block3_conv2/kernel
Y
Placeholder_11Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
	Assign_11Assignblock3_conv2/biasPlaceholder_11*
validate_shape(*
use_locking( *
_output_shapes	
:�*
T0*$
_class
loc:@block3_conv2/bias
s
Placeholder_12Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
	Assign_12Assignblock3_conv3/kernelPlaceholder_12*
validate_shape(*
use_locking( *(
_output_shapes
:��*
T0*&
_class
loc:@block3_conv3/kernel
Y
Placeholder_13Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
	Assign_13Assignblock3_conv3/biasPlaceholder_13*
validate_shape(*
use_locking( *
_output_shapes	
:�*
T0*$
_class
loc:@block3_conv3/bias
s
Placeholder_14Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
	Assign_14Assignblock4_conv1/kernelPlaceholder_14*
validate_shape(*
use_locking( *(
_output_shapes
:��*
T0*&
_class
loc:@block4_conv1/kernel
Y
Placeholder_15Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
	Assign_15Assignblock4_conv1/biasPlaceholder_15*
validate_shape(*
use_locking( *
_output_shapes	
:�*
T0*$
_class
loc:@block4_conv1/bias
s
Placeholder_16Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
	Assign_16Assignblock4_conv2/kernelPlaceholder_16*
validate_shape(*
use_locking( *(
_output_shapes
:��*
T0*&
_class
loc:@block4_conv2/kernel
Y
Placeholder_17Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
	Assign_17Assignblock4_conv2/biasPlaceholder_17*
validate_shape(*
use_locking( *
_output_shapes	
:�*
T0*$
_class
loc:@block4_conv2/bias
s
Placeholder_18Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
	Assign_18Assignblock4_conv3/kernelPlaceholder_18*
validate_shape(*
use_locking( *(
_output_shapes
:��*
T0*&
_class
loc:@block4_conv3/kernel
Y
Placeholder_19Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
	Assign_19Assignblock4_conv3/biasPlaceholder_19*
validate_shape(*
use_locking( *
_output_shapes	
:�*
T0*$
_class
loc:@block4_conv3/bias
s
Placeholder_20Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
	Assign_20Assignblock5_conv1/kernelPlaceholder_20*
validate_shape(*
use_locking( *(
_output_shapes
:��*
T0*&
_class
loc:@block5_conv1/kernel
Y
Placeholder_21Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
	Assign_21Assignblock5_conv1/biasPlaceholder_21*
validate_shape(*
use_locking( *
_output_shapes	
:�*
T0*$
_class
loc:@block5_conv1/bias
s
Placeholder_22Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
	Assign_22Assignblock5_conv2/kernelPlaceholder_22*
validate_shape(*
use_locking( *(
_output_shapes
:��*
T0*&
_class
loc:@block5_conv2/kernel
Y
Placeholder_23Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
	Assign_23Assignblock5_conv2/biasPlaceholder_23*
validate_shape(*
use_locking( *
_output_shapes	
:�*
T0*$
_class
loc:@block5_conv2/bias
s
Placeholder_24Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
	Assign_24Assignblock5_conv3/kernelPlaceholder_24*
validate_shape(*
use_locking( *(
_output_shapes
:��*
T0*&
_class
loc:@block5_conv3/kernel
Y
Placeholder_25Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
	Assign_25Assignblock5_conv3/biasPlaceholder_25*
validate_shape(*
use_locking( *
_output_shapes	
:�*
T0*$
_class
loc:@block5_conv3/bias
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
1global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      
�
global_average_pooling2d_1/MeanMeanblock5_pool/MaxPool1global_average_pooling2d_1/Mean/reduction_indices*
	keep_dims( *(
_output_shapes
:����������*

Tidx0*
T0
m
dense_1/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
_
dense_1/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ��
_
dense_1/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �=
�
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
seed2��j*
dtype0* 
_output_shapes
:
��*
T0*
seed���)
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
_output_shapes
: *
T0
�
dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub* 
_output_shapes
:
��*
T0
�
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min* 
_output_shapes
:
��*
T0
�
dense_1/kernel
VariableV2*
	container *
shared_name *
dtype0* 
_output_shapes
:
��*
shape:
��
�
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
validate_shape(*
use_locking(* 
_output_shapes
:
��*
T0*!
_class
loc:@dense_1/kernel
}
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:
��
\
dense_1/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    
z
dense_1/bias
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*
_class
loc:@dense_1/bias
r
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
T0*
_output_shapes	
:�
�
dense_1/MatMulMatMulglobal_average_pooling2d_1/Meandense_1/kernel/read*
transpose_b( *(
_output_shapes
:����������*
transpose_a( *
T0
�
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*(
_output_shapes
:����������*
data_formatNHWC*
T0
X
dense_1/ReluReludense_1/BiasAdd*(
_output_shapes
:����������*
T0
m
dense_2/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
_
dense_2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *ܰ��
_
dense_2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ܰ�=
�
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
seed2��*
dtype0*
_output_shapes
:	�*
T0*
seed���)
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
_output_shapes
: *
T0
�
dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
_output_shapes
:	�*
T0

dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
_output_shapes
:	�*
T0
�
dense_2/kernel
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes
:	�*
shape:	�
�
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
validate_shape(*
use_locking(*
_output_shapes
:	�*
T0*!
_class
loc:@dense_2/kernel
|
dense_2/kernel/readIdentitydense_2/kernel*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes
:	�
Z
dense_2/ConstConst*
_output_shapes
:*
dtype0*
valueB*    
x
dense_2/bias
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes
:*
shape:
�
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
validate_shape(*
use_locking(*
_output_shapes
:*
T0*
_class
loc:@dense_2/bias
q
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
T0*
_output_shapes
:
�
dense_2/MatMulMatMuldense_1/Reludense_2/kernel/read*
transpose_b( *'
_output_shapes
:���������*
transpose_a( *
T0
�
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*'
_output_shapes
:���������*
data_formatNHWC*
T0
]
dense_2/SigmoidSigmoiddense_2/BiasAdd*'
_output_shapes
:���������*
T0
^
SGD/iterations/initial_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
r
SGD/iterations
VariableV2*
	container *
shared_name *
dtype0	*
_output_shapes
: *
shape: 
�
SGD/iterations/AssignAssignSGD/iterationsSGD/iterations/initial_value*
validate_shape(*
use_locking(*
_output_shapes
: *
T0	*!
_class
loc:@SGD/iterations
s
SGD/iterations/readIdentitySGD/iterations*!
_class
loc:@SGD/iterations*
T0	*
_output_shapes
: 
Y
SGD/lr/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *��'7
j
SGD/lr
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes
: *
shape: 
�
SGD/lr/AssignAssignSGD/lrSGD/lr/initial_value*
validate_shape(*
use_locking(*
_output_shapes
: *
T0*
_class
loc:@SGD/lr
[
SGD/lr/readIdentitySGD/lr*
_class
loc:@SGD/lr*
T0*
_output_shapes
: 
_
SGD/momentum/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *fff?
p
SGD/momentum
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes
: *
shape: 
�
SGD/momentum/AssignAssignSGD/momentumSGD/momentum/initial_value*
validate_shape(*
use_locking(*
_output_shapes
: *
T0*
_class
loc:@SGD/momentum
m
SGD/momentum/readIdentitySGD/momentum*
_class
loc:@SGD/momentum*
T0*
_output_shapes
: 
\
SGD/decay/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
m
	SGD/decay
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes
: *
shape: 
�
SGD/decay/AssignAssign	SGD/decaySGD/decay/initial_value*
validate_shape(*
use_locking(*
_output_shapes
: *
T0*
_class
loc:@SGD/decay
d
SGD/decay/readIdentity	SGD/decay*
_class
loc:@SGD/decay*
T0*
_output_shapes
: 
�
dense_2_targetPlaceholder*0
_output_shapes
:������������������*
dtype0*%
shape:������������������
q
dense_2_sample_weightsPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
\
loss/dense_2_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���3
\
loss/dense_2_loss/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
o
loss/dense_2_loss/subSubloss/dense_2_loss/sub/xloss/dense_2_loss/Const*
_output_shapes
: *
T0
�
'loss/dense_2_loss/clip_by_value/MinimumMinimumdense_2/Sigmoidloss/dense_2_loss/sub*'
_output_shapes
:���������*
T0
�
loss/dense_2_loss/clip_by_valueMaximum'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*'
_output_shapes
:���������*
T0
^
loss/dense_2_loss/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
loss/dense_2_loss/sub_1Subloss/dense_2_loss/sub_1/xloss/dense_2_loss/clip_by_value*'
_output_shapes
:���������*
T0
�
loss/dense_2_loss/truedivRealDivloss/dense_2_loss/clip_by_valueloss/dense_2_loss/sub_1*'
_output_shapes
:���������*
T0
i
loss/dense_2_loss/LogLogloss/dense_2_loss/truediv*'
_output_shapes
:���������*
T0
�
*loss/dense_2_loss/logistic_loss/zeros_like	ZerosLikeloss/dense_2_loss/Log*'
_output_shapes
:���������*
T0
�
,loss/dense_2_loss/logistic_loss/GreaterEqualGreaterEqualloss/dense_2_loss/Log*loss/dense_2_loss/logistic_loss/zeros_like*'
_output_shapes
:���������*
T0
�
&loss/dense_2_loss/logistic_loss/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualloss/dense_2_loss/Log*loss/dense_2_loss/logistic_loss/zeros_like*'
_output_shapes
:���������*
T0
s
#loss/dense_2_loss/logistic_loss/NegNegloss/dense_2_loss/Log*'
_output_shapes
:���������*
T0
�
(loss/dense_2_loss/logistic_loss/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqual#loss/dense_2_loss/logistic_loss/Negloss/dense_2_loss/Log*'
_output_shapes
:���������*
T0
�
#loss/dense_2_loss/logistic_loss/mulMulloss/dense_2_loss/Logdense_2_target*0
_output_shapes
:������������������*
T0
�
#loss/dense_2_loss/logistic_loss/subSub&loss/dense_2_loss/logistic_loss/Select#loss/dense_2_loss/logistic_loss/mul*0
_output_shapes
:������������������*
T0
�
#loss/dense_2_loss/logistic_loss/ExpExp(loss/dense_2_loss/logistic_loss/Select_1*'
_output_shapes
:���������*
T0
�
%loss/dense_2_loss/logistic_loss/Log1pLog1p#loss/dense_2_loss/logistic_loss/Exp*'
_output_shapes
:���������*
T0
�
loss/dense_2_loss/logistic_lossAdd#loss/dense_2_loss/logistic_loss/sub%loss/dense_2_loss/logistic_loss/Log1p*0
_output_shapes
:������������������*
T0
s
(loss/dense_2_loss/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
loss/dense_2_loss/MeanMeanloss/dense_2_loss/logistic_loss(loss/dense_2_loss/Mean/reduction_indices*
	keep_dims( *#
_output_shapes
:���������*

Tidx0*
T0
m
*loss/dense_2_loss/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB 
�
loss/dense_2_loss/Mean_1Meanloss/dense_2_loss/Mean*loss/dense_2_loss/Mean_1/reduction_indices*
	keep_dims( *#
_output_shapes
:���������*

Tidx0*
T0
|
loss/dense_2_loss/mulMulloss/dense_2_loss/Mean_1dense_2_sample_weights*#
_output_shapes
:���������*
T0
a
loss/dense_2_loss/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
loss/dense_2_loss/NotEqualNotEqualdense_2_sample_weightsloss/dense_2_loss/NotEqual/y*#
_output_shapes
:���������*
T0
w
loss/dense_2_loss/CastCastloss/dense_2_loss/NotEqual*#
_output_shapes
:���������*

SrcT0
*

DstT0
c
loss/dense_2_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
�
loss/dense_2_loss/Mean_2Meanloss/dense_2_loss/Castloss/dense_2_loss/Const_1*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
�
loss/dense_2_loss/truediv_1RealDivloss/dense_2_loss/mulloss/dense_2_loss/Mean_2*#
_output_shapes
:���������*
T0
c
loss/dense_2_loss/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
�
loss/dense_2_loss/Mean_3Meanloss/dense_2_loss/truediv_1loss/dense_2_loss/Const_2*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
O

loss/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
V
loss/mulMul
loss/mul/xloss/dense_2_loss/Mean_3*
_output_shapes
: *
T0
]
metrics/acc/RoundRounddense_2/Sigmoid*'
_output_shapes
:���������*
T0
x
metrics/acc/EqualEqualdense_2_targetmetrics/acc/Round*0
_output_shapes
:������������������*
T0
u
metrics/acc/CastCastmetrics/acc/Equal*0
_output_shapes
:������������������*

SrcT0
*

DstT0
m
"metrics/acc/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
metrics/acc/MeanMeanmetrics/acc/Cast"metrics/acc/Mean/reduction_indices*
	keep_dims( *#
_output_shapes
:���������*

Tidx0*
T0
[
metrics/acc/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
}
metrics/acc/Mean_1Meanmetrics/acc/Meanmetrics/acc/Const*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
|
training/SGD/gradients/ShapeConst*
_class
loc:@loss/mul*
dtype0*
valueB *
_output_shapes
: 
~
training/SGD/gradients/ConstConst*
_class
loc:@loss/mul*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
training/SGD/gradients/FillFilltraining/SGD/gradients/Shapetraining/SGD/gradients/Const*
_class
loc:@loss/mul*
T0*
_output_shapes
: 
�
*training/SGD/gradients/loss/mul_grad/ShapeConst*
_class
loc:@loss/mul*
dtype0*
valueB *
_output_shapes
: 
�
,training/SGD/gradients/loss/mul_grad/Shape_1Const*
_class
loc:@loss/mul*
dtype0*
valueB *
_output_shapes
: 
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
loc:@loss/mul*

Tidx0*
T0*
_output_shapes
:
�
,training/SGD/gradients/loss/mul_grad/ReshapeReshape(training/SGD/gradients/loss/mul_grad/Sum*training/SGD/gradients/loss/mul_grad/Shape*
_class
loc:@loss/mul*
_output_shapes
: *
T0*
Tshape0
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
loc:@loss/mul*

Tidx0*
T0*
_output_shapes
:
�
.training/SGD/gradients/loss/mul_grad/Reshape_1Reshape*training/SGD/gradients/loss/mul_grad/Sum_1,training/SGD/gradients/loss/mul_grad/Shape_1*
_class
loc:@loss/mul*
_output_shapes
: *
T0*
Tshape0
�
Btraining/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Reshape/shapeConst*+
_class!
loc:@loss/dense_2_loss/Mean_3*
dtype0*
valueB:*
_output_shapes
:
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/ReshapeReshape.training/SGD/gradients/loss/mul_grad/Reshape_1Btraining/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Reshape/shape*+
_class!
loc:@loss/dense_2_loss/Mean_3*
_output_shapes
:*
T0*
Tshape0
�
:training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/ShapeShapeloss/dense_2_loss/truediv_1*
out_type0*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3
�
9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/TileTile<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Reshape:training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape*

Tmultiples0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*#
_output_shapes
:���������
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape_1Shapeloss/dense_2_loss/truediv_1*
out_type0*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape_2Const*+
_class!
loc:@loss/dense_2_loss/Mean_3*
dtype0*
valueB *
_output_shapes
: 
�
:training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/ConstConst*+
_class!
loc:@loss/dense_2_loss/Mean_3*
dtype0*
valueB: *
_output_shapes
:
�
9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/ProdProd<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape_1:training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Const*
	keep_dims( *+
_class!
loc:@loss/dense_2_loss/Mean_3*

Tidx0*
T0*
_output_shapes
: 
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Const_1Const*+
_class!
loc:@loss/dense_2_loss/Mean_3*
dtype0*
valueB: *
_output_shapes
:
�
;training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Prod_1Prod<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape_2<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Const_1*
	keep_dims( *+
_class!
loc:@loss/dense_2_loss/Mean_3*

Tidx0*
T0*
_output_shapes
: 
�
>training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Maximum/yConst*+
_class!
loc:@loss/dense_2_loss/Mean_3*
dtype0*
value	B :*
_output_shapes
: 
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

SrcT0*

DstT0*
_output_shapes
: 
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/truedivRealDiv9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Tile9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Cast*+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*#
_output_shapes
:���������
�
=training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/ShapeShapeloss/dense_2_loss/mul*
out_type0*
_output_shapes
:*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1
�
?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1Const*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
dtype0*
valueB *
_output_shapes
: 
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
" loc:@loss/dense_2_loss/truediv_1*

Tidx0*
T0*
_output_shapes
:
�
?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/ReshapeReshape;training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Sum=training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Shape*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:���������*
T0*
Tshape0
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
" loc:@loss/dense_2_loss/truediv_1*

Tidx0*
T0*
_output_shapes
:
�
Atraining/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Reshape_1Reshape=training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
: *
T0*
Tshape0
�
7training/SGD/gradients/loss/dense_2_loss/mul_grad/ShapeShapeloss/dense_2_loss/Mean_1*
out_type0*
_output_shapes
:*
T0*(
_class
loc:@loss/dense_2_loss/mul
�
9training/SGD/gradients/loss/dense_2_loss/mul_grad/Shape_1Shapedense_2_sample_weights*
out_type0*
_output_shapes
:*
T0*(
_class
loc:@loss/dense_2_loss/mul
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
loc:@loss/dense_2_loss/mul*

Tidx0*
T0*
_output_shapes
:
�
9training/SGD/gradients/loss/dense_2_loss/mul_grad/ReshapeReshape5training/SGD/gradients/loss/dense_2_loss/mul_grad/Sum7training/SGD/gradients/loss/dense_2_loss/mul_grad/Shape*(
_class
loc:@loss/dense_2_loss/mul*#
_output_shapes
:���������*
T0*
Tshape0
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
loc:@loss/dense_2_loss/mul*

Tidx0*
T0*
_output_shapes
:
�
;training/SGD/gradients/loss/dense_2_loss/mul_grad/Reshape_1Reshape7training/SGD/gradients/loss/dense_2_loss/mul_grad/Sum_19training/SGD/gradients/loss/dense_2_loss/mul_grad/Shape_1*(
_class
loc:@loss/dense_2_loss/mul*#
_output_shapes
:���������*
T0*
Tshape0
�
:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/ShapeShapeloss/dense_2_loss/Mean*
out_type0*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/SizeConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
value	B :*
_output_shapes
: 
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
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_1Const*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
valueB: *
_output_shapes
:
�
@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range/startConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
value	B : *
_output_shapes
: 
�
@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range/deltaConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
value	B :*
_output_shapes
: 
�
:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/rangeRange@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range/start9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Size@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range/delta*+
_class!
loc:@loss/dense_2_loss/Mean_1*

Tidx0*
_output_shapes
:
�
?training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Fill/valueConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
value	B :*
_output_shapes
: 
�
9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/FillFill<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_1?training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Fill/value*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
: 
�
Btraining/SGD/gradients/loss/dense_2_loss/Mean_1_grad/DynamicStitchDynamicStitch:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range8training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/mod:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Fill*
N*#
_output_shapes
:���������*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
>training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Maximum/yConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
value	B :*
_output_shapes
: 
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
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
:*
T0*
Tshape0
�
9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/TileTile<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Reshape=training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/floordiv*

Tmultiples0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
:
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_2Shapeloss/dense_2_loss/Mean*
out_type0*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_3Shapeloss/dense_2_loss/Mean_1*
out_type0*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/ConstConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
valueB: *
_output_shapes
:
�
9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/ProdProd<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_2:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Const*
	keep_dims( *+
_class!
loc:@loss/dense_2_loss/Mean_1*

Tidx0*
T0*
_output_shapes
: 
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Const_1Const*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
valueB: *
_output_shapes
:
�
;training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Prod_1Prod<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_3<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Const_1*
	keep_dims( *+
_class!
loc:@loss/dense_2_loss/Mean_1*

Tidx0*
T0*
_output_shapes
: 
�
@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1/yConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
value	B :*
_output_shapes
: 
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

SrcT0*

DstT0*
_output_shapes
: 
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/truedivRealDiv9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Tile9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Cast*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*#
_output_shapes
:���������
�
8training/SGD/gradients/loss/dense_2_loss/Mean_grad/ShapeShapeloss/dense_2_loss/logistic_loss*
out_type0*
_output_shapes
:*
T0*)
_class
loc:@loss/dense_2_loss/Mean
�
7training/SGD/gradients/loss/dense_2_loss/Mean_grad/SizeConst*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
value	B :*
_output_shapes
: 
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
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_1Const*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
valueB *
_output_shapes
: 
�
>training/SGD/gradients/loss/dense_2_loss/Mean_grad/range/startConst*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
value	B : *
_output_shapes
: 
�
>training/SGD/gradients/loss/dense_2_loss/Mean_grad/range/deltaConst*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
value	B :*
_output_shapes
: 
�
8training/SGD/gradients/loss/dense_2_loss/Mean_grad/rangeRange>training/SGD/gradients/loss/dense_2_loss/Mean_grad/range/start7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Size>training/SGD/gradients/loss/dense_2_loss/Mean_grad/range/delta*)
_class
loc:@loss/dense_2_loss/Mean*

Tidx0*
_output_shapes
:
�
=training/SGD/gradients/loss/dense_2_loss/Mean_grad/Fill/valueConst*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
value	B :*
_output_shapes
: 
�
7training/SGD/gradients/loss/dense_2_loss/Mean_grad/FillFill:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_1=training/SGD/gradients/loss/dense_2_loss/Mean_grad/Fill/value*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
: 
�
@training/SGD/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchDynamicStitch8training/SGD/gradients/loss/dense_2_loss/Mean_grad/range6training/SGD/gradients/loss/dense_2_loss/Mean_grad/mod8training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Fill*
N*#
_output_shapes
:���������*
T0*)
_class
loc:@loss/dense_2_loss/Mean
�
<training/SGD/gradients/loss/dense_2_loss/Mean_grad/Maximum/yConst*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
value	B :*
_output_shapes
: 
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
loc:@loss/dense_2_loss/Mean*
_output_shapes
:*
T0*
Tshape0
�
7training/SGD/gradients/loss/dense_2_loss/Mean_grad/TileTile:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Reshape;training/SGD/gradients/loss/dense_2_loss/Mean_grad/floordiv*

Tmultiples0*)
_class
loc:@loss/dense_2_loss/Mean*
T0*0
_output_shapes
:������������������
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_2Shapeloss/dense_2_loss/logistic_loss*
out_type0*
_output_shapes
:*
T0*)
_class
loc:@loss/dense_2_loss/Mean
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_3Shapeloss/dense_2_loss/Mean*
out_type0*
_output_shapes
:*
T0*)
_class
loc:@loss/dense_2_loss/Mean
�
8training/SGD/gradients/loss/dense_2_loss/Mean_grad/ConstConst*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
valueB: *
_output_shapes
:
�
7training/SGD/gradients/loss/dense_2_loss/Mean_grad/ProdProd:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_28training/SGD/gradients/loss/dense_2_loss/Mean_grad/Const*
	keep_dims( *)
_class
loc:@loss/dense_2_loss/Mean*

Tidx0*
T0*
_output_shapes
: 
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Const_1Const*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
valueB: *
_output_shapes
:
�
9training/SGD/gradients/loss/dense_2_loss/Mean_grad/Prod_1Prod:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_3:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Const_1*
	keep_dims( *)
_class
loc:@loss/dense_2_loss/Mean*

Tidx0*
T0*
_output_shapes
: 
�
>training/SGD/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/yConst*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
value	B :*
_output_shapes
: 
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

SrcT0*

DstT0*
_output_shapes
: 
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/truedivRealDiv7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Tile7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Cast*)
_class
loc:@loss/dense_2_loss/Mean*
T0*0
_output_shapes
:������������������
�
Atraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/ShapeShape#loss/dense_2_loss/logistic_loss/sub*
out_type0*
_output_shapes
:*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1Shape%loss/dense_2_loss/logistic_loss/Log1p*
out_type0*
_output_shapes
:*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss
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
&$loc:@loss/dense_2_loss/logistic_loss*

Tidx0*
T0*
_output_shapes
:
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeReshape?training/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/SumAtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Shape*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*0
_output_shapes
:������������������*
T0*
Tshape0
�
Atraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Sum_1Sum:training/SGD/gradients/loss/dense_2_loss/Mean_grad/truedivStraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgs:1*
	keep_dims( *2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*

Tidx0*
T0*
_output_shapes
:
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1ReshapeAtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Sum_1Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*'
_output_shapes
:���������*
T0*
Tshape0
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ShapeShape&loss/dense_2_loss/logistic_loss/Select*
out_type0*
_output_shapes
:*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1Shape#loss/dense_2_loss/logistic_loss/mul*
out_type0*
_output_shapes
:*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub
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
*(loc:@loss/dense_2_loss/logistic_loss/sub*

Tidx0*
T0*
_output_shapes
:
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ReshapeReshapeCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/SumEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*'
_output_shapes
:���������*
T0*
Tshape0
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Sum_1SumCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeWtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*

Tidx0*
T0*
_output_shapes
:
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
*(loc:@loss/dense_2_loss/logistic_loss/sub*0
_output_shapes
:������������������*
T0*
Tshape0
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add/xConstF^training/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*
dtype0*
valueB
 *  �?*
_output_shapes
: 
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
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ShapeShapeloss/dense_2_loss/Log*
out_type0*
_output_shapes
:*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1Shapedense_2_target*
out_type0*
_output_shapes
:*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul
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
*(loc:@loss/dense_2_loss/logistic_loss/mul*

Tidx0*
T0*
_output_shapes
:
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ReshapeReshapeCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/SumEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*'
_output_shapes
:���������*
T0*
Tshape0
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
*(loc:@loss/dense_2_loss/logistic_loss/mul*

Tidx0*
T0*
_output_shapes
:
�
Itraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Reshape_1ReshapeEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Sum_1Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*0
_output_shapes
:������������������*
T0*
Tshape0
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
training/SGD/gradients/AddNAddNItraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_grad/SelectGtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ReshapeMtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select_1Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Neg_grad/Neg*
N*'
_output_shapes
:���������*
T0*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select
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
;training/SGD/gradients/loss/dense_2_loss/truediv_grad/ShapeShapeloss/dense_2_loss/clip_by_value*
out_type0*
_output_shapes
:*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv
�
=training/SGD/gradients/loss/dense_2_loss/truediv_grad/Shape_1Shapeloss/dense_2_loss/sub_1*
out_type0*
_output_shapes
:*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv
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
 loc:@loss/dense_2_loss/truediv*

Tidx0*
T0*
_output_shapes
:
�
=training/SGD/gradients/loss/dense_2_loss/truediv_grad/ReshapeReshape9training/SGD/gradients/loss/dense_2_loss/truediv_grad/Sum;training/SGD/gradients/loss/dense_2_loss/truediv_grad/Shape*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:���������*
T0*
Tshape0
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
 loc:@loss/dense_2_loss/truediv*

Tidx0*
T0*
_output_shapes
:
�
?training/SGD/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Reshape;training/SGD/gradients/loss/dense_2_loss/truediv_grad/Sum_1=training/SGD/gradients/loss/dense_2_loss/truediv_grad/Shape_1*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:���������*
T0*
Tshape0
�
9training/SGD/gradients/loss/dense_2_loss/sub_1_grad/ShapeConst**
_class 
loc:@loss/dense_2_loss/sub_1*
dtype0*
valueB *
_output_shapes
: 
�
;training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Shape_1Shapeloss/dense_2_loss/clip_by_value*
out_type0*
_output_shapes
:*
T0**
_class 
loc:@loss/dense_2_loss/sub_1
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
loc:@loss/dense_2_loss/sub_1*

Tidx0*
T0*
_output_shapes
:
�
;training/SGD/gradients/loss/dense_2_loss/sub_1_grad/ReshapeReshape7training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Sum9training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Shape**
_class 
loc:@loss/dense_2_loss/sub_1*
_output_shapes
: *
T0*
Tshape0
�
9training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Sum_1Sum?training/SGD/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Ktraining/SGD/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( **
_class 
loc:@loss/dense_2_loss/sub_1*

Tidx0*
T0*
_output_shapes
:
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
loc:@loss/dense_2_loss/sub_1*'
_output_shapes
:���������*
T0*
Tshape0
�
training/SGD/gradients/AddN_1AddN=training/SGD/gradients/loss/dense_2_loss/truediv_grad/Reshape=training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Reshape_1*
N*'
_output_shapes
:���������*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv
�
Atraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeShape'loss/dense_2_loss/clip_by_value/Minimum*
out_type0*
_output_shapes
:*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
�
Ctraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1Const*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
dtype0*
valueB *
_output_shapes
: 
�
Ctraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Shapetraining/SGD/gradients/AddN_1*
out_type0*
_output_shapes
:*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
�
Gtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/ConstConst*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
dtype0*
valueB
 *    *
_output_shapes
: 
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
&$loc:@loss/dense_2_loss/clip_by_value*

Tidx0*
T0*
_output_shapes
:
�
Ctraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeReshape?training/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/SumAtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:���������*
T0*
Tshape0
�
Atraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1SumDtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1Straining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*

Tidx0*
T0*
_output_shapes
:
�
Etraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_1ReshapeAtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1Ctraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
: *
T0*
Tshape0
�
Itraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeShapedense_2/Sigmoid*
out_type0*
_output_shapes
:*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
�
Ktraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1Const*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
dtype0*
valueB *
_output_shapes
: 
�
Ktraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2ShapeCtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*
out_type0*
_output_shapes
:*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
�
Otraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/ConstConst*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
dtype0*
valueB
 *    *
_output_shapes
: 
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
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*

Tidx0*
T0*
_output_shapes
:
�
Ktraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ReshapeReshapeGtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumItraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:���������*
T0*
Tshape0
�
Itraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1SumLtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1[training/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*

Tidx0*
T0*
_output_shapes
:
�
Mtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeItraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1Ktraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
: *
T0*
Tshape0
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
loc:@dense_2/BiasAdd*
data_formatNHWC*
T0*
_output_shapes
:
�
1training/SGD/gradients/dense_2/MatMul_grad/MatMulMatMul7training/SGD/gradients/dense_2/Sigmoid_grad/SigmoidGraddense_2/kernel/read*
transpose_b(*!
_class
loc:@dense_2/MatMul*
transpose_a( *
T0*(
_output_shapes
:����������
�
3training/SGD/gradients/dense_2/MatMul_grad/MatMul_1MatMuldense_1/Relu7training/SGD/gradients/dense_2/Sigmoid_grad/SigmoidGrad*
transpose_b( *!
_class
loc:@dense_2/MatMul*
transpose_a(*
T0*
_output_shapes
:	�
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
loc:@dense_1/BiasAdd*
data_formatNHWC*
T0*
_output_shapes	
:�
�
1training/SGD/gradients/dense_1/MatMul_grad/MatMulMatMul1training/SGD/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*
transpose_b(*!
_class
loc:@dense_1/MatMul*
transpose_a( *
T0*(
_output_shapes
:����������
�
3training/SGD/gradients/dense_1/MatMul_grad/MatMul_1MatMulglobal_average_pooling2d_1/Mean1training/SGD/gradients/dense_1/Relu_grad/ReluGrad*
transpose_b( *!
_class
loc:@dense_1/MatMul*
transpose_a(*
T0* 
_output_shapes
:
��
�
Atraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/ShapeShapeblock5_pool/MaxPool*
out_type0*
_output_shapes
:*
T0*2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/SizeConst*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
dtype0*
value	B :*
_output_shapes
: 
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
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_1Const*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
dtype0*
valueB:*
_output_shapes
:
�
Gtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range/startConst*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
dtype0*
value	B : *
_output_shapes
: 
�
Gtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range/deltaConst*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
dtype0*
value	B :*
_output_shapes
: 
�
Atraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/rangeRangeGtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range/start@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/SizeGtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range/delta*2
_class(
&$loc:@global_average_pooling2d_1/Mean*

Tidx0*
_output_shapes
:
�
Ftraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Fill/valueConst*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
dtype0*
value	B :*
_output_shapes
: 
�
@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/FillFillCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_1Ftraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Fill/value*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:
�
Itraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/DynamicStitchDynamicStitchAtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range?training/SGD/gradients/global_average_pooling2d_1/Mean_grad/modAtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/Fill*
N*#
_output_shapes
:���������*
T0*2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
Etraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Maximum/yConst*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
dtype0*
value	B :*
_output_shapes
: 
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
&$loc:@global_average_pooling2d_1/Mean*
_output_shapes
:*
T0*
Tshape0
�
@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/TileTileCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/ReshapeDtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/floordiv*

Tmultiples0*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*J
_output_shapes8
6:4������������������������������������
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_2Shapeblock5_pool/MaxPool*
out_type0*
_output_shapes
:*
T0*2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_3Shapeglobal_average_pooling2d_1/Mean*
out_type0*
_output_shapes
:*
T0*2
_class(
&$loc:@global_average_pooling2d_1/Mean
�
Atraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/ConstConst*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
dtype0*
valueB: *
_output_shapes
:
�
@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/ProdProdCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_2Atraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Const*
	keep_dims( *2
_class(
&$loc:@global_average_pooling2d_1/Mean*

Tidx0*
T0*
_output_shapes
: 
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Const_1Const*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
dtype0*
valueB: *
_output_shapes
:
�
Btraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Prod_1ProdCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_3Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Const_1*
	keep_dims( *2
_class(
&$loc:@global_average_pooling2d_1/Mean*

Tidx0*
T0*
_output_shapes
: 
�
Gtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Maximum_1/yConst*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
dtype0*
value	B :*
_output_shapes
: 
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

SrcT0*

DstT0*
_output_shapes
: 
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/truedivRealDiv@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/Tile@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/Cast*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*B
_output_shapes0
.:,����������������������������
�
;training/SGD/gradients/block5_pool/MaxPool_grad/MaxPoolGradMaxPoolGradblock5_conv3/Relublock5_pool/MaxPoolCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/truediv*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
paddingVALID*
T0*&
_class
loc:@block5_pool/MaxPool*
ksize
*
strides

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
loc:@block5_conv3/BiasAdd*
data_formatNHWC*
T0*
_output_shapes	
:�
�
;training/SGD/gradients/block5_conv3/convolution_grad/ShapeNShapeNblock5_conv2/Relublock5_conv3/kernel/read*
N*
out_type0* 
_output_shapes
::*
T0*+
_class!
loc:@block5_conv3/convolution
�
Htraining/SGD/gradients/block5_conv3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block5_conv3/convolution_grad/ShapeNblock5_conv3/kernel/read6training/SGD/gradients/block5_conv3/Relu_grad/ReluGrad*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*+
_class!
loc:@block5_conv3/convolution*
strides

�
Itraining/SGD/gradients/block5_conv3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock5_conv2/Relu=training/SGD/gradients/block5_conv3/convolution_grad/ShapeN:16training/SGD/gradients/block5_conv3/Relu_grad/ReluGrad*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*+
_class!
loc:@block5_conv3/convolution*
strides

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
loc:@block5_conv2/BiasAdd*
data_formatNHWC*
T0*
_output_shapes	
:�
�
;training/SGD/gradients/block5_conv2/convolution_grad/ShapeNShapeNblock5_conv1/Relublock5_conv2/kernel/read*
N*
out_type0* 
_output_shapes
::*
T0*+
_class!
loc:@block5_conv2/convolution
�
Htraining/SGD/gradients/block5_conv2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block5_conv2/convolution_grad/ShapeNblock5_conv2/kernel/read6training/SGD/gradients/block5_conv2/Relu_grad/ReluGrad*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*+
_class!
loc:@block5_conv2/convolution*
strides

�
Itraining/SGD/gradients/block5_conv2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock5_conv1/Relu=training/SGD/gradients/block5_conv2/convolution_grad/ShapeN:16training/SGD/gradients/block5_conv2/Relu_grad/ReluGrad*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*+
_class!
loc:@block5_conv2/convolution*
strides

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
loc:@block5_conv1/BiasAdd*
data_formatNHWC*
T0*
_output_shapes	
:�
�
;training/SGD/gradients/block5_conv1/convolution_grad/ShapeNShapeNblock4_pool/MaxPoolblock5_conv1/kernel/read*
N*
out_type0* 
_output_shapes
::*
T0*+
_class!
loc:@block5_conv1/convolution
�
Htraining/SGD/gradients/block5_conv1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block5_conv1/convolution_grad/ShapeNblock5_conv1/kernel/read6training/SGD/gradients/block5_conv1/Relu_grad/ReluGrad*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*+
_class!
loc:@block5_conv1/convolution*
strides

�
Itraining/SGD/gradients/block5_conv1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock4_pool/MaxPool=training/SGD/gradients/block5_conv1/convolution_grad/ShapeN:16training/SGD/gradients/block5_conv1/Relu_grad/ReluGrad*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*+
_class!
loc:@block5_conv1/convolution*
strides

�
;training/SGD/gradients/block4_pool/MaxPool_grad/MaxPoolGradMaxPoolGradblock4_conv3/Relublock4_pool/MaxPoolHtraining/SGD/gradients/block5_conv1/convolution_grad/Conv2DBackpropInput*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
paddingVALID*
T0*&
_class
loc:@block4_pool/MaxPool*
ksize
*
strides

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
loc:@block4_conv3/BiasAdd*
data_formatNHWC*
T0*
_output_shapes	
:�
�
;training/SGD/gradients/block4_conv3/convolution_grad/ShapeNShapeNblock4_conv2/Relublock4_conv3/kernel/read*
N*
out_type0* 
_output_shapes
::*
T0*+
_class!
loc:@block4_conv3/convolution
�
Htraining/SGD/gradients/block4_conv3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block4_conv3/convolution_grad/ShapeNblock4_conv3/kernel/read6training/SGD/gradients/block4_conv3/Relu_grad/ReluGrad*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*+
_class!
loc:@block4_conv3/convolution*
strides

�
Itraining/SGD/gradients/block4_conv3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock4_conv2/Relu=training/SGD/gradients/block4_conv3/convolution_grad/ShapeN:16training/SGD/gradients/block4_conv3/Relu_grad/ReluGrad*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*+
_class!
loc:@block4_conv3/convolution*
strides

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
loc:@block4_conv2/BiasAdd*
data_formatNHWC*
T0*
_output_shapes	
:�
�
;training/SGD/gradients/block4_conv2/convolution_grad/ShapeNShapeNblock4_conv1/Relublock4_conv2/kernel/read*
N*
out_type0* 
_output_shapes
::*
T0*+
_class!
loc:@block4_conv2/convolution
�
Htraining/SGD/gradients/block4_conv2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block4_conv2/convolution_grad/ShapeNblock4_conv2/kernel/read6training/SGD/gradients/block4_conv2/Relu_grad/ReluGrad*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*+
_class!
loc:@block4_conv2/convolution*
strides

�
Itraining/SGD/gradients/block4_conv2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock4_conv1/Relu=training/SGD/gradients/block4_conv2/convolution_grad/ShapeN:16training/SGD/gradients/block4_conv2/Relu_grad/ReluGrad*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*+
_class!
loc:@block4_conv2/convolution*
strides

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
loc:@block4_conv1/BiasAdd*
data_formatNHWC*
T0*
_output_shapes	
:�
�
;training/SGD/gradients/block4_conv1/convolution_grad/ShapeNShapeNblock3_pool/MaxPoolblock4_conv1/kernel/read*
N*
out_type0* 
_output_shapes
::*
T0*+
_class!
loc:@block4_conv1/convolution
�
Htraining/SGD/gradients/block4_conv1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block4_conv1/convolution_grad/ShapeNblock4_conv1/kernel/read6training/SGD/gradients/block4_conv1/Relu_grad/ReluGrad*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*+
_class!
loc:@block4_conv1/convolution*
strides

�
Itraining/SGD/gradients/block4_conv1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock3_pool/MaxPool=training/SGD/gradients/block4_conv1/convolution_grad/ShapeN:16training/SGD/gradients/block4_conv1/Relu_grad/ReluGrad*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME*+
_class!
loc:@block4_conv1/convolution*
strides

^
training/SGD/AssignAdd/valueConst*
_output_shapes
: *
dtype0	*
value	B	 R
�
training/SGD/AssignAdd	AssignAddSGD/iterationstraining/SGD/AssignAdd/value*!
_class
loc:@SGD/iterations*
use_locking( *
T0	*
_output_shapes
: 
{
training/SGD/ConstConst*(
_output_shapes
:��*
dtype0*'
valueB��*    
�
training/SGD/Variable
VariableV2*
	container *
shared_name *
dtype0*(
_output_shapes
:��*
shape:��
�
training/SGD/Variable/AssignAssigntraining/SGD/Variabletraining/SGD/Const*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*(
_class
loc:@training/SGD/Variable
�
training/SGD/Variable/readIdentitytraining/SGD/Variable*(
_class
loc:@training/SGD/Variable*
T0*(
_output_shapes
:��
c
training/SGD/Const_1Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
training/SGD/Variable_1
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
training/SGD/Variable_1/AssignAssigntraining/SGD/Variable_1training/SGD/Const_1*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0**
_class 
loc:@training/SGD/Variable_1
�
training/SGD/Variable_1/readIdentitytraining/SGD/Variable_1**
_class 
loc:@training/SGD/Variable_1*
T0*
_output_shapes	
:�
}
training/SGD/Const_2Const*(
_output_shapes
:��*
dtype0*'
valueB��*    
�
training/SGD/Variable_2
VariableV2*
	container *
shared_name *
dtype0*(
_output_shapes
:��*
shape:��
�
training/SGD/Variable_2/AssignAssigntraining/SGD/Variable_2training/SGD/Const_2*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0**
_class 
loc:@training/SGD/Variable_2
�
training/SGD/Variable_2/readIdentitytraining/SGD/Variable_2**
_class 
loc:@training/SGD/Variable_2*
T0*(
_output_shapes
:��
c
training/SGD/Const_3Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
training/SGD/Variable_3
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
training/SGD/Variable_3/AssignAssigntraining/SGD/Variable_3training/SGD/Const_3*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0**
_class 
loc:@training/SGD/Variable_3
�
training/SGD/Variable_3/readIdentitytraining/SGD/Variable_3**
_class 
loc:@training/SGD/Variable_3*
T0*
_output_shapes	
:�
}
training/SGD/Const_4Const*(
_output_shapes
:��*
dtype0*'
valueB��*    
�
training/SGD/Variable_4
VariableV2*
	container *
shared_name *
dtype0*(
_output_shapes
:��*
shape:��
�
training/SGD/Variable_4/AssignAssigntraining/SGD/Variable_4training/SGD/Const_4*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0**
_class 
loc:@training/SGD/Variable_4
�
training/SGD/Variable_4/readIdentitytraining/SGD/Variable_4**
_class 
loc:@training/SGD/Variable_4*
T0*(
_output_shapes
:��
c
training/SGD/Const_5Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
training/SGD/Variable_5
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
training/SGD/Variable_5/AssignAssigntraining/SGD/Variable_5training/SGD/Const_5*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0**
_class 
loc:@training/SGD/Variable_5
�
training/SGD/Variable_5/readIdentitytraining/SGD/Variable_5**
_class 
loc:@training/SGD/Variable_5*
T0*
_output_shapes	
:�
}
training/SGD/Const_6Const*(
_output_shapes
:��*
dtype0*'
valueB��*    
�
training/SGD/Variable_6
VariableV2*
	container *
shared_name *
dtype0*(
_output_shapes
:��*
shape:��
�
training/SGD/Variable_6/AssignAssigntraining/SGD/Variable_6training/SGD/Const_6*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0**
_class 
loc:@training/SGD/Variable_6
�
training/SGD/Variable_6/readIdentitytraining/SGD/Variable_6**
_class 
loc:@training/SGD/Variable_6*
T0*(
_output_shapes
:��
c
training/SGD/Const_7Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
training/SGD/Variable_7
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
training/SGD/Variable_7/AssignAssigntraining/SGD/Variable_7training/SGD/Const_7*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0**
_class 
loc:@training/SGD/Variable_7
�
training/SGD/Variable_7/readIdentitytraining/SGD/Variable_7**
_class 
loc:@training/SGD/Variable_7*
T0*
_output_shapes	
:�
}
training/SGD/Const_8Const*(
_output_shapes
:��*
dtype0*'
valueB��*    
�
training/SGD/Variable_8
VariableV2*
	container *
shared_name *
dtype0*(
_output_shapes
:��*
shape:��
�
training/SGD/Variable_8/AssignAssigntraining/SGD/Variable_8training/SGD/Const_8*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0**
_class 
loc:@training/SGD/Variable_8
�
training/SGD/Variable_8/readIdentitytraining/SGD/Variable_8**
_class 
loc:@training/SGD/Variable_8*
T0*(
_output_shapes
:��
c
training/SGD/Const_9Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
training/SGD/Variable_9
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
training/SGD/Variable_9/AssignAssigntraining/SGD/Variable_9training/SGD/Const_9*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0**
_class 
loc:@training/SGD/Variable_9
�
training/SGD/Variable_9/readIdentitytraining/SGD/Variable_9**
_class 
loc:@training/SGD/Variable_9*
T0*
_output_shapes	
:�
~
training/SGD/Const_10Const*(
_output_shapes
:��*
dtype0*'
valueB��*    
�
training/SGD/Variable_10
VariableV2*
	container *
shared_name *
dtype0*(
_output_shapes
:��*
shape:��
�
training/SGD/Variable_10/AssignAssigntraining/SGD/Variable_10training/SGD/Const_10*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*+
_class!
loc:@training/SGD/Variable_10
�
training/SGD/Variable_10/readIdentitytraining/SGD/Variable_10*+
_class!
loc:@training/SGD/Variable_10*
T0*(
_output_shapes
:��
d
training/SGD/Const_11Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
training/SGD/Variable_11
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
training/SGD/Variable_11/AssignAssigntraining/SGD/Variable_11training/SGD/Const_11*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*+
_class!
loc:@training/SGD/Variable_11
�
training/SGD/Variable_11/readIdentitytraining/SGD/Variable_11*+
_class!
loc:@training/SGD/Variable_11*
T0*
_output_shapes	
:�
n
training/SGD/Const_12Const* 
_output_shapes
:
��*
dtype0*
valueB
��*    
�
training/SGD/Variable_12
VariableV2*
	container *
shared_name *
dtype0* 
_output_shapes
:
��*
shape:
��
�
training/SGD/Variable_12/AssignAssigntraining/SGD/Variable_12training/SGD/Const_12*
validate_shape(*
use_locking(* 
_output_shapes
:
��*
T0*+
_class!
loc:@training/SGD/Variable_12
�
training/SGD/Variable_12/readIdentitytraining/SGD/Variable_12*+
_class!
loc:@training/SGD/Variable_12*
T0* 
_output_shapes
:
��
d
training/SGD/Const_13Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
training/SGD/Variable_13
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes	
:�*
shape:�
�
training/SGD/Variable_13/AssignAssigntraining/SGD/Variable_13training/SGD/Const_13*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*+
_class!
loc:@training/SGD/Variable_13
�
training/SGD/Variable_13/readIdentitytraining/SGD/Variable_13*+
_class!
loc:@training/SGD/Variable_13*
T0*
_output_shapes	
:�
l
training/SGD/Const_14Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�
training/SGD/Variable_14
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes
:	�*
shape:	�
�
training/SGD/Variable_14/AssignAssigntraining/SGD/Variable_14training/SGD/Const_14*
validate_shape(*
use_locking(*
_output_shapes
:	�*
T0*+
_class!
loc:@training/SGD/Variable_14
�
training/SGD/Variable_14/readIdentitytraining/SGD/Variable_14*+
_class!
loc:@training/SGD/Variable_14*
T0*
_output_shapes
:	�
b
training/SGD/Const_15Const*
_output_shapes
:*
dtype0*
valueB*    
�
training/SGD/Variable_15
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes
:*
shape:
�
training/SGD/Variable_15/AssignAssigntraining/SGD/Variable_15training/SGD/Const_15*
validate_shape(*
use_locking(*
_output_shapes
:*
T0*+
_class!
loc:@training/SGD/Variable_15
�
training/SGD/Variable_15/readIdentitytraining/SGD/Variable_15*+
_class!
loc:@training/SGD/Variable_15*
T0*
_output_shapes
:
y
training/SGD/mulMulSGD/momentum/readtraining/SGD/Variable/read*(
_output_shapes
:��*
T0
�
training/SGD/mul_1MulSGD/lr/readItraining/SGD/gradients/block4_conv1/convolution_grad/Conv2DBackpropFilter*(
_output_shapes
:��*
T0
p
training/SGD/subSubtraining/SGD/multraining/SGD/mul_1*(
_output_shapes
:��*
T0
�
training/SGD/AssignAssigntraining/SGD/Variabletraining/SGD/sub*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*(
_class
loc:@training/SGD/Variable
v
training/SGD/addAddblock4_conv1/kernel/readtraining/SGD/sub*(
_output_shapes
:��*
T0
�
training/SGD/Assign_1Assignblock4_conv1/kerneltraining/SGD/add*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*&
_class
loc:@block4_conv1/kernel
p
training/SGD/mul_2MulSGD/momentum/readtraining/SGD/Variable_1/read*
_output_shapes	
:�*
T0
�
training/SGD/mul_3MulSGD/lr/read<training/SGD/gradients/block4_conv1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
g
training/SGD/sub_1Subtraining/SGD/mul_2training/SGD/mul_3*
_output_shapes	
:�*
T0
�
training/SGD/Assign_2Assigntraining/SGD/Variable_1training/SGD/sub_1*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0**
_class 
loc:@training/SGD/Variable_1
k
training/SGD/add_1Addblock4_conv1/bias/readtraining/SGD/sub_1*
_output_shapes	
:�*
T0
�
training/SGD/Assign_3Assignblock4_conv1/biastraining/SGD/add_1*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*$
_class
loc:@block4_conv1/bias
}
training/SGD/mul_4MulSGD/momentum/readtraining/SGD/Variable_2/read*(
_output_shapes
:��*
T0
�
training/SGD/mul_5MulSGD/lr/readItraining/SGD/gradients/block4_conv2/convolution_grad/Conv2DBackpropFilter*(
_output_shapes
:��*
T0
t
training/SGD/sub_2Subtraining/SGD/mul_4training/SGD/mul_5*(
_output_shapes
:��*
T0
�
training/SGD/Assign_4Assigntraining/SGD/Variable_2training/SGD/sub_2*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0**
_class 
loc:@training/SGD/Variable_2
z
training/SGD/add_2Addblock4_conv2/kernel/readtraining/SGD/sub_2*(
_output_shapes
:��*
T0
�
training/SGD/Assign_5Assignblock4_conv2/kerneltraining/SGD/add_2*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*&
_class
loc:@block4_conv2/kernel
p
training/SGD/mul_6MulSGD/momentum/readtraining/SGD/Variable_3/read*
_output_shapes	
:�*
T0
�
training/SGD/mul_7MulSGD/lr/read<training/SGD/gradients/block4_conv2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
g
training/SGD/sub_3Subtraining/SGD/mul_6training/SGD/mul_7*
_output_shapes	
:�*
T0
�
training/SGD/Assign_6Assigntraining/SGD/Variable_3training/SGD/sub_3*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0**
_class 
loc:@training/SGD/Variable_3
k
training/SGD/add_3Addblock4_conv2/bias/readtraining/SGD/sub_3*
_output_shapes	
:�*
T0
�
training/SGD/Assign_7Assignblock4_conv2/biastraining/SGD/add_3*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*$
_class
loc:@block4_conv2/bias
}
training/SGD/mul_8MulSGD/momentum/readtraining/SGD/Variable_4/read*(
_output_shapes
:��*
T0
�
training/SGD/mul_9MulSGD/lr/readItraining/SGD/gradients/block4_conv3/convolution_grad/Conv2DBackpropFilter*(
_output_shapes
:��*
T0
t
training/SGD/sub_4Subtraining/SGD/mul_8training/SGD/mul_9*(
_output_shapes
:��*
T0
�
training/SGD/Assign_8Assigntraining/SGD/Variable_4training/SGD/sub_4*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0**
_class 
loc:@training/SGD/Variable_4
z
training/SGD/add_4Addblock4_conv3/kernel/readtraining/SGD/sub_4*(
_output_shapes
:��*
T0
�
training/SGD/Assign_9Assignblock4_conv3/kerneltraining/SGD/add_4*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*&
_class
loc:@block4_conv3/kernel
q
training/SGD/mul_10MulSGD/momentum/readtraining/SGD/Variable_5/read*
_output_shapes	
:�*
T0
�
training/SGD/mul_11MulSGD/lr/read<training/SGD/gradients/block4_conv3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
i
training/SGD/sub_5Subtraining/SGD/mul_10training/SGD/mul_11*
_output_shapes	
:�*
T0
�
training/SGD/Assign_10Assigntraining/SGD/Variable_5training/SGD/sub_5*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0**
_class 
loc:@training/SGD/Variable_5
k
training/SGD/add_5Addblock4_conv3/bias/readtraining/SGD/sub_5*
_output_shapes	
:�*
T0
�
training/SGD/Assign_11Assignblock4_conv3/biastraining/SGD/add_5*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*$
_class
loc:@block4_conv3/bias
~
training/SGD/mul_12MulSGD/momentum/readtraining/SGD/Variable_6/read*(
_output_shapes
:��*
T0
�
training/SGD/mul_13MulSGD/lr/readItraining/SGD/gradients/block5_conv1/convolution_grad/Conv2DBackpropFilter*(
_output_shapes
:��*
T0
v
training/SGD/sub_6Subtraining/SGD/mul_12training/SGD/mul_13*(
_output_shapes
:��*
T0
�
training/SGD/Assign_12Assigntraining/SGD/Variable_6training/SGD/sub_6*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0**
_class 
loc:@training/SGD/Variable_6
z
training/SGD/add_6Addblock5_conv1/kernel/readtraining/SGD/sub_6*(
_output_shapes
:��*
T0
�
training/SGD/Assign_13Assignblock5_conv1/kerneltraining/SGD/add_6*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*&
_class
loc:@block5_conv1/kernel
q
training/SGD/mul_14MulSGD/momentum/readtraining/SGD/Variable_7/read*
_output_shapes	
:�*
T0
�
training/SGD/mul_15MulSGD/lr/read<training/SGD/gradients/block5_conv1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
i
training/SGD/sub_7Subtraining/SGD/mul_14training/SGD/mul_15*
_output_shapes	
:�*
T0
�
training/SGD/Assign_14Assigntraining/SGD/Variable_7training/SGD/sub_7*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0**
_class 
loc:@training/SGD/Variable_7
k
training/SGD/add_7Addblock5_conv1/bias/readtraining/SGD/sub_7*
_output_shapes	
:�*
T0
�
training/SGD/Assign_15Assignblock5_conv1/biastraining/SGD/add_7*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*$
_class
loc:@block5_conv1/bias
~
training/SGD/mul_16MulSGD/momentum/readtraining/SGD/Variable_8/read*(
_output_shapes
:��*
T0
�
training/SGD/mul_17MulSGD/lr/readItraining/SGD/gradients/block5_conv2/convolution_grad/Conv2DBackpropFilter*(
_output_shapes
:��*
T0
v
training/SGD/sub_8Subtraining/SGD/mul_16training/SGD/mul_17*(
_output_shapes
:��*
T0
�
training/SGD/Assign_16Assigntraining/SGD/Variable_8training/SGD/sub_8*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0**
_class 
loc:@training/SGD/Variable_8
z
training/SGD/add_8Addblock5_conv2/kernel/readtraining/SGD/sub_8*(
_output_shapes
:��*
T0
�
training/SGD/Assign_17Assignblock5_conv2/kerneltraining/SGD/add_8*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*&
_class
loc:@block5_conv2/kernel
q
training/SGD/mul_18MulSGD/momentum/readtraining/SGD/Variable_9/read*
_output_shapes	
:�*
T0
�
training/SGD/mul_19MulSGD/lr/read<training/SGD/gradients/block5_conv2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
i
training/SGD/sub_9Subtraining/SGD/mul_18training/SGD/mul_19*
_output_shapes	
:�*
T0
�
training/SGD/Assign_18Assigntraining/SGD/Variable_9training/SGD/sub_9*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0**
_class 
loc:@training/SGD/Variable_9
k
training/SGD/add_9Addblock5_conv2/bias/readtraining/SGD/sub_9*
_output_shapes	
:�*
T0
�
training/SGD/Assign_19Assignblock5_conv2/biastraining/SGD/add_9*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*$
_class
loc:@block5_conv2/bias

training/SGD/mul_20MulSGD/momentum/readtraining/SGD/Variable_10/read*(
_output_shapes
:��*
T0
�
training/SGD/mul_21MulSGD/lr/readItraining/SGD/gradients/block5_conv3/convolution_grad/Conv2DBackpropFilter*(
_output_shapes
:��*
T0
w
training/SGD/sub_10Subtraining/SGD/mul_20training/SGD/mul_21*(
_output_shapes
:��*
T0
�
training/SGD/Assign_20Assigntraining/SGD/Variable_10training/SGD/sub_10*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*+
_class!
loc:@training/SGD/Variable_10
|
training/SGD/add_10Addblock5_conv3/kernel/readtraining/SGD/sub_10*(
_output_shapes
:��*
T0
�
training/SGD/Assign_21Assignblock5_conv3/kerneltraining/SGD/add_10*
validate_shape(*
use_locking(*(
_output_shapes
:��*
T0*&
_class
loc:@block5_conv3/kernel
r
training/SGD/mul_22MulSGD/momentum/readtraining/SGD/Variable_11/read*
_output_shapes	
:�*
T0
�
training/SGD/mul_23MulSGD/lr/read<training/SGD/gradients/block5_conv3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
j
training/SGD/sub_11Subtraining/SGD/mul_22training/SGD/mul_23*
_output_shapes	
:�*
T0
�
training/SGD/Assign_22Assigntraining/SGD/Variable_11training/SGD/sub_11*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*+
_class!
loc:@training/SGD/Variable_11
m
training/SGD/add_11Addblock5_conv3/bias/readtraining/SGD/sub_11*
_output_shapes	
:�*
T0
�
training/SGD/Assign_23Assignblock5_conv3/biastraining/SGD/add_11*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*$
_class
loc:@block5_conv3/bias
w
training/SGD/mul_24MulSGD/momentum/readtraining/SGD/Variable_12/read* 
_output_shapes
:
��*
T0
�
training/SGD/mul_25MulSGD/lr/read3training/SGD/gradients/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:
��*
T0
o
training/SGD/sub_12Subtraining/SGD/mul_24training/SGD/mul_25* 
_output_shapes
:
��*
T0
�
training/SGD/Assign_24Assigntraining/SGD/Variable_12training/SGD/sub_12*
validate_shape(*
use_locking(* 
_output_shapes
:
��*
T0*+
_class!
loc:@training/SGD/Variable_12
o
training/SGD/add_12Adddense_1/kernel/readtraining/SGD/sub_12* 
_output_shapes
:
��*
T0
�
training/SGD/Assign_25Assigndense_1/kerneltraining/SGD/add_12*
validate_shape(*
use_locking(* 
_output_shapes
:
��*
T0*!
_class
loc:@dense_1/kernel
r
training/SGD/mul_26MulSGD/momentum/readtraining/SGD/Variable_13/read*
_output_shapes	
:�*
T0
�
training/SGD/mul_27MulSGD/lr/read7training/SGD/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
j
training/SGD/sub_13Subtraining/SGD/mul_26training/SGD/mul_27*
_output_shapes	
:�*
T0
�
training/SGD/Assign_26Assigntraining/SGD/Variable_13training/SGD/sub_13*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*+
_class!
loc:@training/SGD/Variable_13
h
training/SGD/add_13Adddense_1/bias/readtraining/SGD/sub_13*
_output_shapes	
:�*
T0
�
training/SGD/Assign_27Assigndense_1/biastraining/SGD/add_13*
validate_shape(*
use_locking(*
_output_shapes	
:�*
T0*
_class
loc:@dense_1/bias
v
training/SGD/mul_28MulSGD/momentum/readtraining/SGD/Variable_14/read*
_output_shapes
:	�*
T0
�
training/SGD/mul_29MulSGD/lr/read3training/SGD/gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes
:	�*
T0
n
training/SGD/sub_14Subtraining/SGD/mul_28training/SGD/mul_29*
_output_shapes
:	�*
T0
�
training/SGD/Assign_28Assigntraining/SGD/Variable_14training/SGD/sub_14*
validate_shape(*
use_locking(*
_output_shapes
:	�*
T0*+
_class!
loc:@training/SGD/Variable_14
n
training/SGD/add_14Adddense_2/kernel/readtraining/SGD/sub_14*
_output_shapes
:	�*
T0
�
training/SGD/Assign_29Assigndense_2/kerneltraining/SGD/add_14*
validate_shape(*
use_locking(*
_output_shapes
:	�*
T0*!
_class
loc:@dense_2/kernel
q
training/SGD/mul_30MulSGD/momentum/readtraining/SGD/Variable_15/read*
_output_shapes
:*
T0
�
training/SGD/mul_31MulSGD/lr/read7training/SGD/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
i
training/SGD/sub_15Subtraining/SGD/mul_30training/SGD/mul_31*
_output_shapes
:*
T0
�
training/SGD/Assign_30Assigntraining/SGD/Variable_15training/SGD/sub_15*
validate_shape(*
use_locking(*
_output_shapes
:*
T0*+
_class!
loc:@training/SGD/Variable_15
g
training/SGD/add_15Adddense_2/bias/readtraining/SGD/sub_15*
_output_shapes
:*
T0
�
training/SGD/Assign_31Assigndense_2/biastraining/SGD/add_15*
validate_shape(*
use_locking(*
_output_shapes
:*
T0*
_class
loc:@dense_2/bias
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
init_1NoOp^dense_1/kernel/Assign^dense_1/bias/Assign^dense_2/kernel/Assign^dense_2/bias/Assign^SGD/iterations/Assign^SGD/lr/Assign^SGD/momentum/Assign^SGD/decay/Assign^training/SGD/Variable/Assign^training/SGD/Variable_1/Assign^training/SGD/Variable_2/Assign^training/SGD/Variable_3/Assign^training/SGD/Variable_4/Assign^training/SGD/Variable_5/Assign^training/SGD/Variable_6/Assign^training/SGD/Variable_7/Assign^training/SGD/Variable_8/Assign^training/SGD/Variable_9/Assign ^training/SGD/Variable_10/Assign ^training/SGD/Variable_11/Assign ^training/SGD/Variable_12/Assign ^training/SGD/Variable_13/Assign ^training/SGD/Variable_14/Assign ^training/SGD/Variable_15/Assign"Ѻ�ֱ     ���m	�Rl���AJ��

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
input_1Placeholder*A
_output_shapes/
-:+���������������������������*
dtype0*6
shape-:+���������������������������
z
!block1_conv1/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   
d
block1_conv1/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *8J̽
d
block1_conv1/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *8J�=
�
)block1_conv1/random_uniform/RandomUniformRandomUniform!block1_conv1/random_uniform/shape*
dtype0*
seed���)*
seed2�ϥ*
T0*&
_output_shapes
:@
�
block1_conv1/random_uniform/subSubblock1_conv1/random_uniform/maxblock1_conv1/random_uniform/min*
_output_shapes
: *
T0
�
block1_conv1/random_uniform/mulMul)block1_conv1/random_uniform/RandomUniformblock1_conv1/random_uniform/sub*&
_output_shapes
:@*
T0
�
block1_conv1/random_uniformAddblock1_conv1/random_uniform/mulblock1_conv1/random_uniform/min*&
_output_shapes
:@*
T0
�
block1_conv1/kernel
VariableV2*
	container *
shape:@*
shared_name *&
_output_shapes
:@*
dtype0
�
block1_conv1/kernel/AssignAssignblock1_conv1/kernelblock1_conv1/random_uniform*
use_locking(*&
_class
loc:@block1_conv1/kernel*
validate_shape(*
T0*&
_output_shapes
:@
�
block1_conv1/kernel/readIdentityblock1_conv1/kernel*&
_class
loc:@block1_conv1/kernel*
T0*&
_output_shapes
:@
_
block1_conv1/ConstConst*
_output_shapes
:@*
dtype0*
valueB@*    
}
block1_conv1/bias
VariableV2*
	container *
shape:@*
shared_name *
_output_shapes
:@*
dtype0
�
block1_conv1/bias/AssignAssignblock1_conv1/biasblock1_conv1/Const*
use_locking(*$
_class
loc:@block1_conv1/bias*
validate_shape(*
T0*
_output_shapes
:@
�
block1_conv1/bias/readIdentityblock1_conv1/bias*$
_class
loc:@block1_conv1/bias*
T0*
_output_shapes
:@
w
&block1_conv1/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block1_conv1/convolutionConv2Dinput_1block1_conv1/kernel/read*A
_output_shapes/
-:+���������������������������@*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME
�
block1_conv1/BiasAddBiasAddblock1_conv1/convolutionblock1_conv1/bias/read*A
_output_shapes/
-:+���������������������������@*
data_formatNHWC*
T0
{
block1_conv1/ReluRelublock1_conv1/BiasAdd*A
_output_shapes/
-:+���������������������������@*
T0
z
!block1_conv2/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      @   @   
d
block1_conv2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:͓�
d
block1_conv2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:͓=
�
)block1_conv2/random_uniform/RandomUniformRandomUniform!block1_conv2/random_uniform/shape*
dtype0*
seed���)*
seed2���*
T0*&
_output_shapes
:@@
�
block1_conv2/random_uniform/subSubblock1_conv2/random_uniform/maxblock1_conv2/random_uniform/min*
_output_shapes
: *
T0
�
block1_conv2/random_uniform/mulMul)block1_conv2/random_uniform/RandomUniformblock1_conv2/random_uniform/sub*&
_output_shapes
:@@*
T0
�
block1_conv2/random_uniformAddblock1_conv2/random_uniform/mulblock1_conv2/random_uniform/min*&
_output_shapes
:@@*
T0
�
block1_conv2/kernel
VariableV2*
	container *
shape:@@*
shared_name *&
_output_shapes
:@@*
dtype0
�
block1_conv2/kernel/AssignAssignblock1_conv2/kernelblock1_conv2/random_uniform*
use_locking(*&
_class
loc:@block1_conv2/kernel*
validate_shape(*
T0*&
_output_shapes
:@@
�
block1_conv2/kernel/readIdentityblock1_conv2/kernel*&
_class
loc:@block1_conv2/kernel*
T0*&
_output_shapes
:@@
_
block1_conv2/ConstConst*
_output_shapes
:@*
dtype0*
valueB@*    
}
block1_conv2/bias
VariableV2*
	container *
shape:@*
shared_name *
_output_shapes
:@*
dtype0
�
block1_conv2/bias/AssignAssignblock1_conv2/biasblock1_conv2/Const*
use_locking(*$
_class
loc:@block1_conv2/bias*
validate_shape(*
T0*
_output_shapes
:@
�
block1_conv2/bias/readIdentityblock1_conv2/bias*$
_class
loc:@block1_conv2/bias*
T0*
_output_shapes
:@
w
&block1_conv2/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block1_conv2/convolutionConv2Dblock1_conv1/Relublock1_conv2/kernel/read*A
_output_shapes/
-:+���������������������������@*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME
�
block1_conv2/BiasAddBiasAddblock1_conv2/convolutionblock1_conv2/bias/read*A
_output_shapes/
-:+���������������������������@*
data_formatNHWC*
T0
{
block1_conv2/ReluRelublock1_conv2/BiasAdd*A
_output_shapes/
-:+���������������������������@*
T0
�
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu*A
_output_shapes/
-:+���������������������������@*
data_formatNHWC*
strides
*
T0*
ksize
*
paddingVALID
z
!block2_conv1/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      @   �   
d
block2_conv1/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *�[q�
d
block2_conv1/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *�[q=
�
)block2_conv1/random_uniform/RandomUniformRandomUniform!block2_conv1/random_uniform/shape*
dtype0*
seed���)*
seed2س�*
T0*'
_output_shapes
:@�
�
block2_conv1/random_uniform/subSubblock2_conv1/random_uniform/maxblock2_conv1/random_uniform/min*
_output_shapes
: *
T0
�
block2_conv1/random_uniform/mulMul)block2_conv1/random_uniform/RandomUniformblock2_conv1/random_uniform/sub*'
_output_shapes
:@�*
T0
�
block2_conv1/random_uniformAddblock2_conv1/random_uniform/mulblock2_conv1/random_uniform/min*'
_output_shapes
:@�*
T0
�
block2_conv1/kernel
VariableV2*
	container *
shape:@�*
shared_name *'
_output_shapes
:@�*
dtype0
�
block2_conv1/kernel/AssignAssignblock2_conv1/kernelblock2_conv1/random_uniform*
use_locking(*&
_class
loc:@block2_conv1/kernel*
validate_shape(*
T0*'
_output_shapes
:@�
�
block2_conv1/kernel/readIdentityblock2_conv1/kernel*&
_class
loc:@block2_conv1/kernel*
T0*'
_output_shapes
:@�
a
block2_conv1/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block2_conv1/bias
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
block2_conv1/bias/AssignAssignblock2_conv1/biasblock2_conv1/Const*
use_locking(*$
_class
loc:@block2_conv1/bias*
validate_shape(*
T0*
_output_shapes	
:�
�
block2_conv1/bias/readIdentityblock2_conv1/bias*$
_class
loc:@block2_conv1/bias*
T0*
_output_shapes	
:�
w
&block2_conv1/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block2_conv1/convolutionConv2Dblock1_pool/MaxPoolblock2_conv1/kernel/read*B
_output_shapes0
.:,����������������������������*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME
�
block2_conv1/BiasAddBiasAddblock2_conv1/convolutionblock2_conv1/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block2_conv1/ReluRelublock2_conv1/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
z
!block2_conv2/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      �   �   
d
block2_conv2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *�Q�
d
block2_conv2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *�Q=
�
)block2_conv2/random_uniform/RandomUniformRandomUniform!block2_conv2/random_uniform/shape*
dtype0*
seed���)*
seed2�d*
T0*(
_output_shapes
:��
�
block2_conv2/random_uniform/subSubblock2_conv2/random_uniform/maxblock2_conv2/random_uniform/min*
_output_shapes
: *
T0
�
block2_conv2/random_uniform/mulMul)block2_conv2/random_uniform/RandomUniformblock2_conv2/random_uniform/sub*(
_output_shapes
:��*
T0
�
block2_conv2/random_uniformAddblock2_conv2/random_uniform/mulblock2_conv2/random_uniform/min*(
_output_shapes
:��*
T0
�
block2_conv2/kernel
VariableV2*
	container *
shape:��*
shared_name *(
_output_shapes
:��*
dtype0
�
block2_conv2/kernel/AssignAssignblock2_conv2/kernelblock2_conv2/random_uniform*
use_locking(*&
_class
loc:@block2_conv2/kernel*
validate_shape(*
T0*(
_output_shapes
:��
�
block2_conv2/kernel/readIdentityblock2_conv2/kernel*&
_class
loc:@block2_conv2/kernel*
T0*(
_output_shapes
:��
a
block2_conv2/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block2_conv2/bias
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
block2_conv2/bias/AssignAssignblock2_conv2/biasblock2_conv2/Const*
use_locking(*$
_class
loc:@block2_conv2/bias*
validate_shape(*
T0*
_output_shapes	
:�
�
block2_conv2/bias/readIdentityblock2_conv2/bias*$
_class
loc:@block2_conv2/bias*
T0*
_output_shapes	
:�
w
&block2_conv2/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block2_conv2/convolutionConv2Dblock2_conv1/Relublock2_conv2/kernel/read*B
_output_shapes0
.:,����������������������������*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME
�
block2_conv2/BiasAddBiasAddblock2_conv2/convolutionblock2_conv2/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block2_conv2/ReluRelublock2_conv2/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
�
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
strides
*
T0*
ksize
*
paddingVALID
z
!block3_conv1/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      �      
d
block3_conv1/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *��*�
d
block3_conv1/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��*=
�
)block3_conv1/random_uniform/RandomUniformRandomUniform!block3_conv1/random_uniform/shape*
dtype0*
seed���)*
seed2��*
T0*(
_output_shapes
:��
�
block3_conv1/random_uniform/subSubblock3_conv1/random_uniform/maxblock3_conv1/random_uniform/min*
_output_shapes
: *
T0
�
block3_conv1/random_uniform/mulMul)block3_conv1/random_uniform/RandomUniformblock3_conv1/random_uniform/sub*(
_output_shapes
:��*
T0
�
block3_conv1/random_uniformAddblock3_conv1/random_uniform/mulblock3_conv1/random_uniform/min*(
_output_shapes
:��*
T0
�
block3_conv1/kernel
VariableV2*
	container *
shape:��*
shared_name *(
_output_shapes
:��*
dtype0
�
block3_conv1/kernel/AssignAssignblock3_conv1/kernelblock3_conv1/random_uniform*
use_locking(*&
_class
loc:@block3_conv1/kernel*
validate_shape(*
T0*(
_output_shapes
:��
�
block3_conv1/kernel/readIdentityblock3_conv1/kernel*&
_class
loc:@block3_conv1/kernel*
T0*(
_output_shapes
:��
a
block3_conv1/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block3_conv1/bias
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
block3_conv1/bias/AssignAssignblock3_conv1/biasblock3_conv1/Const*
use_locking(*$
_class
loc:@block3_conv1/bias*
validate_shape(*
T0*
_output_shapes	
:�
�
block3_conv1/bias/readIdentityblock3_conv1/bias*$
_class
loc:@block3_conv1/bias*
T0*
_output_shapes	
:�
w
&block3_conv1/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block3_conv1/convolutionConv2Dblock2_pool/MaxPoolblock3_conv1/kernel/read*B
_output_shapes0
.:,����������������������������*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME
�
block3_conv1/BiasAddBiasAddblock3_conv1/convolutionblock3_conv1/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block3_conv1/ReluRelublock3_conv1/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
z
!block3_conv2/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
d
block3_conv2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:��
d
block3_conv2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:�=
�
)block3_conv2/random_uniform/RandomUniformRandomUniform!block3_conv2/random_uniform/shape*
dtype0*
seed���)*
seed2܄�*
T0*(
_output_shapes
:��
�
block3_conv2/random_uniform/subSubblock3_conv2/random_uniform/maxblock3_conv2/random_uniform/min*
_output_shapes
: *
T0
�
block3_conv2/random_uniform/mulMul)block3_conv2/random_uniform/RandomUniformblock3_conv2/random_uniform/sub*(
_output_shapes
:��*
T0
�
block3_conv2/random_uniformAddblock3_conv2/random_uniform/mulblock3_conv2/random_uniform/min*(
_output_shapes
:��*
T0
�
block3_conv2/kernel
VariableV2*
	container *
shape:��*
shared_name *(
_output_shapes
:��*
dtype0
�
block3_conv2/kernel/AssignAssignblock3_conv2/kernelblock3_conv2/random_uniform*
use_locking(*&
_class
loc:@block3_conv2/kernel*
validate_shape(*
T0*(
_output_shapes
:��
�
block3_conv2/kernel/readIdentityblock3_conv2/kernel*&
_class
loc:@block3_conv2/kernel*
T0*(
_output_shapes
:��
a
block3_conv2/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block3_conv2/bias
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
block3_conv2/bias/AssignAssignblock3_conv2/biasblock3_conv2/Const*
use_locking(*$
_class
loc:@block3_conv2/bias*
validate_shape(*
T0*
_output_shapes	
:�
�
block3_conv2/bias/readIdentityblock3_conv2/bias*$
_class
loc:@block3_conv2/bias*
T0*
_output_shapes	
:�
w
&block3_conv2/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block3_conv2/convolutionConv2Dblock3_conv1/Relublock3_conv2/kernel/read*B
_output_shapes0
.:,����������������������������*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME
�
block3_conv2/BiasAddBiasAddblock3_conv2/convolutionblock3_conv2/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block3_conv2/ReluRelublock3_conv2/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
z
!block3_conv3/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
d
block3_conv3/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:��
d
block3_conv3/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:�=
�
)block3_conv3/random_uniform/RandomUniformRandomUniform!block3_conv3/random_uniform/shape*
dtype0*
seed���)*
seed2���*
T0*(
_output_shapes
:��
�
block3_conv3/random_uniform/subSubblock3_conv3/random_uniform/maxblock3_conv3/random_uniform/min*
_output_shapes
: *
T0
�
block3_conv3/random_uniform/mulMul)block3_conv3/random_uniform/RandomUniformblock3_conv3/random_uniform/sub*(
_output_shapes
:��*
T0
�
block3_conv3/random_uniformAddblock3_conv3/random_uniform/mulblock3_conv3/random_uniform/min*(
_output_shapes
:��*
T0
�
block3_conv3/kernel
VariableV2*
	container *
shape:��*
shared_name *(
_output_shapes
:��*
dtype0
�
block3_conv3/kernel/AssignAssignblock3_conv3/kernelblock3_conv3/random_uniform*
use_locking(*&
_class
loc:@block3_conv3/kernel*
validate_shape(*
T0*(
_output_shapes
:��
�
block3_conv3/kernel/readIdentityblock3_conv3/kernel*&
_class
loc:@block3_conv3/kernel*
T0*(
_output_shapes
:��
a
block3_conv3/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block3_conv3/bias
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
block3_conv3/bias/AssignAssignblock3_conv3/biasblock3_conv3/Const*
use_locking(*$
_class
loc:@block3_conv3/bias*
validate_shape(*
T0*
_output_shapes	
:�
�
block3_conv3/bias/readIdentityblock3_conv3/bias*$
_class
loc:@block3_conv3/bias*
T0*
_output_shapes	
:�
w
&block3_conv3/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block3_conv3/convolutionConv2Dblock3_conv2/Relublock3_conv3/kernel/read*B
_output_shapes0
.:,����������������������������*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME
�
block3_conv3/BiasAddBiasAddblock3_conv3/convolutionblock3_conv3/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block3_conv3/ReluRelublock3_conv3/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
�
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
strides
*
T0*
ksize
*
paddingVALID
z
!block4_conv1/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
d
block4_conv1/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *�[�
d
block4_conv1/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *�[�<
�
)block4_conv1/random_uniform/RandomUniformRandomUniform!block4_conv1/random_uniform/shape*
dtype0*
seed���)*
seed2���*
T0*(
_output_shapes
:��
�
block4_conv1/random_uniform/subSubblock4_conv1/random_uniform/maxblock4_conv1/random_uniform/min*
_output_shapes
: *
T0
�
block4_conv1/random_uniform/mulMul)block4_conv1/random_uniform/RandomUniformblock4_conv1/random_uniform/sub*(
_output_shapes
:��*
T0
�
block4_conv1/random_uniformAddblock4_conv1/random_uniform/mulblock4_conv1/random_uniform/min*(
_output_shapes
:��*
T0
�
block4_conv1/kernel
VariableV2*
	container *
shape:��*
shared_name *(
_output_shapes
:��*
dtype0
�
block4_conv1/kernel/AssignAssignblock4_conv1/kernelblock4_conv1/random_uniform*
use_locking(*&
_class
loc:@block4_conv1/kernel*
validate_shape(*
T0*(
_output_shapes
:��
�
block4_conv1/kernel/readIdentityblock4_conv1/kernel*&
_class
loc:@block4_conv1/kernel*
T0*(
_output_shapes
:��
a
block4_conv1/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block4_conv1/bias
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
block4_conv1/bias/AssignAssignblock4_conv1/biasblock4_conv1/Const*
use_locking(*$
_class
loc:@block4_conv1/bias*
validate_shape(*
T0*
_output_shapes	
:�
�
block4_conv1/bias/readIdentityblock4_conv1/bias*$
_class
loc:@block4_conv1/bias*
T0*
_output_shapes	
:�
w
&block4_conv1/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block4_conv1/convolutionConv2Dblock3_pool/MaxPoolblock4_conv1/kernel/read*B
_output_shapes0
.:,����������������������������*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME
�
block4_conv1/BiasAddBiasAddblock4_conv1/convolutionblock4_conv1/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block4_conv1/ReluRelublock4_conv1/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
z
!block4_conv2/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
d
block4_conv2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *�Ѽ
d
block4_conv2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��<
�
)block4_conv2/random_uniform/RandomUniformRandomUniform!block4_conv2/random_uniform/shape*
dtype0*
seed���)*
seed2���*
T0*(
_output_shapes
:��
�
block4_conv2/random_uniform/subSubblock4_conv2/random_uniform/maxblock4_conv2/random_uniform/min*
_output_shapes
: *
T0
�
block4_conv2/random_uniform/mulMul)block4_conv2/random_uniform/RandomUniformblock4_conv2/random_uniform/sub*(
_output_shapes
:��*
T0
�
block4_conv2/random_uniformAddblock4_conv2/random_uniform/mulblock4_conv2/random_uniform/min*(
_output_shapes
:��*
T0
�
block4_conv2/kernel
VariableV2*
	container *
shape:��*
shared_name *(
_output_shapes
:��*
dtype0
�
block4_conv2/kernel/AssignAssignblock4_conv2/kernelblock4_conv2/random_uniform*
use_locking(*&
_class
loc:@block4_conv2/kernel*
validate_shape(*
T0*(
_output_shapes
:��
�
block4_conv2/kernel/readIdentityblock4_conv2/kernel*&
_class
loc:@block4_conv2/kernel*
T0*(
_output_shapes
:��
a
block4_conv2/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block4_conv2/bias
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
block4_conv2/bias/AssignAssignblock4_conv2/biasblock4_conv2/Const*
use_locking(*$
_class
loc:@block4_conv2/bias*
validate_shape(*
T0*
_output_shapes	
:�
�
block4_conv2/bias/readIdentityblock4_conv2/bias*$
_class
loc:@block4_conv2/bias*
T0*
_output_shapes	
:�
w
&block4_conv2/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block4_conv2/convolutionConv2Dblock4_conv1/Relublock4_conv2/kernel/read*B
_output_shapes0
.:,����������������������������*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME
�
block4_conv2/BiasAddBiasAddblock4_conv2/convolutionblock4_conv2/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block4_conv2/ReluRelublock4_conv2/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
z
!block4_conv3/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
d
block4_conv3/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *�Ѽ
d
block4_conv3/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��<
�
)block4_conv3/random_uniform/RandomUniformRandomUniform!block4_conv3/random_uniform/shape*
dtype0*
seed���)*
seed2��!*
T0*(
_output_shapes
:��
�
block4_conv3/random_uniform/subSubblock4_conv3/random_uniform/maxblock4_conv3/random_uniform/min*
_output_shapes
: *
T0
�
block4_conv3/random_uniform/mulMul)block4_conv3/random_uniform/RandomUniformblock4_conv3/random_uniform/sub*(
_output_shapes
:��*
T0
�
block4_conv3/random_uniformAddblock4_conv3/random_uniform/mulblock4_conv3/random_uniform/min*(
_output_shapes
:��*
T0
�
block4_conv3/kernel
VariableV2*
	container *
shape:��*
shared_name *(
_output_shapes
:��*
dtype0
�
block4_conv3/kernel/AssignAssignblock4_conv3/kernelblock4_conv3/random_uniform*
use_locking(*&
_class
loc:@block4_conv3/kernel*
validate_shape(*
T0*(
_output_shapes
:��
�
block4_conv3/kernel/readIdentityblock4_conv3/kernel*&
_class
loc:@block4_conv3/kernel*
T0*(
_output_shapes
:��
a
block4_conv3/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block4_conv3/bias
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
block4_conv3/bias/AssignAssignblock4_conv3/biasblock4_conv3/Const*
use_locking(*$
_class
loc:@block4_conv3/bias*
validate_shape(*
T0*
_output_shapes	
:�
�
block4_conv3/bias/readIdentityblock4_conv3/bias*$
_class
loc:@block4_conv3/bias*
T0*
_output_shapes	
:�
w
&block4_conv3/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block4_conv3/convolutionConv2Dblock4_conv2/Relublock4_conv3/kernel/read*B
_output_shapes0
.:,����������������������������*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME
�
block4_conv3/BiasAddBiasAddblock4_conv3/convolutionblock4_conv3/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block4_conv3/ReluRelublock4_conv3/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
�
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
strides
*
T0*
ksize
*
paddingVALID
z
!block5_conv1/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
d
block5_conv1/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *�Ѽ
d
block5_conv1/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��<
�
)block5_conv1/random_uniform/RandomUniformRandomUniform!block5_conv1/random_uniform/shape*
dtype0*
seed���)*
seed2��*
T0*(
_output_shapes
:��
�
block5_conv1/random_uniform/subSubblock5_conv1/random_uniform/maxblock5_conv1/random_uniform/min*
_output_shapes
: *
T0
�
block5_conv1/random_uniform/mulMul)block5_conv1/random_uniform/RandomUniformblock5_conv1/random_uniform/sub*(
_output_shapes
:��*
T0
�
block5_conv1/random_uniformAddblock5_conv1/random_uniform/mulblock5_conv1/random_uniform/min*(
_output_shapes
:��*
T0
�
block5_conv1/kernel
VariableV2*
	container *
shape:��*
shared_name *(
_output_shapes
:��*
dtype0
�
block5_conv1/kernel/AssignAssignblock5_conv1/kernelblock5_conv1/random_uniform*
use_locking(*&
_class
loc:@block5_conv1/kernel*
validate_shape(*
T0*(
_output_shapes
:��
�
block5_conv1/kernel/readIdentityblock5_conv1/kernel*&
_class
loc:@block5_conv1/kernel*
T0*(
_output_shapes
:��
a
block5_conv1/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block5_conv1/bias
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
block5_conv1/bias/AssignAssignblock5_conv1/biasblock5_conv1/Const*
use_locking(*$
_class
loc:@block5_conv1/bias*
validate_shape(*
T0*
_output_shapes	
:�
�
block5_conv1/bias/readIdentityblock5_conv1/bias*$
_class
loc:@block5_conv1/bias*
T0*
_output_shapes	
:�
w
&block5_conv1/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block5_conv1/convolutionConv2Dblock4_pool/MaxPoolblock5_conv1/kernel/read*B
_output_shapes0
.:,����������������������������*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME
�
block5_conv1/BiasAddBiasAddblock5_conv1/convolutionblock5_conv1/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block5_conv1/ReluRelublock5_conv1/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
z
!block5_conv2/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
d
block5_conv2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *�Ѽ
d
block5_conv2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��<
�
)block5_conv2/random_uniform/RandomUniformRandomUniform!block5_conv2/random_uniform/shape*
dtype0*
seed���)*
seed2���*
T0*(
_output_shapes
:��
�
block5_conv2/random_uniform/subSubblock5_conv2/random_uniform/maxblock5_conv2/random_uniform/min*
_output_shapes
: *
T0
�
block5_conv2/random_uniform/mulMul)block5_conv2/random_uniform/RandomUniformblock5_conv2/random_uniform/sub*(
_output_shapes
:��*
T0
�
block5_conv2/random_uniformAddblock5_conv2/random_uniform/mulblock5_conv2/random_uniform/min*(
_output_shapes
:��*
T0
�
block5_conv2/kernel
VariableV2*
	container *
shape:��*
shared_name *(
_output_shapes
:��*
dtype0
�
block5_conv2/kernel/AssignAssignblock5_conv2/kernelblock5_conv2/random_uniform*
use_locking(*&
_class
loc:@block5_conv2/kernel*
validate_shape(*
T0*(
_output_shapes
:��
�
block5_conv2/kernel/readIdentityblock5_conv2/kernel*&
_class
loc:@block5_conv2/kernel*
T0*(
_output_shapes
:��
a
block5_conv2/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block5_conv2/bias
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
block5_conv2/bias/AssignAssignblock5_conv2/biasblock5_conv2/Const*
use_locking(*$
_class
loc:@block5_conv2/bias*
validate_shape(*
T0*
_output_shapes	
:�
�
block5_conv2/bias/readIdentityblock5_conv2/bias*$
_class
loc:@block5_conv2/bias*
T0*
_output_shapes	
:�
w
&block5_conv2/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block5_conv2/convolutionConv2Dblock5_conv1/Relublock5_conv2/kernel/read*B
_output_shapes0
.:,����������������������������*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME
�
block5_conv2/BiasAddBiasAddblock5_conv2/convolutionblock5_conv2/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block5_conv2/ReluRelublock5_conv2/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
z
!block5_conv3/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
d
block5_conv3/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *�Ѽ
d
block5_conv3/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *��<
�
)block5_conv3/random_uniform/RandomUniformRandomUniform!block5_conv3/random_uniform/shape*
dtype0*
seed���)*
seed2��%*
T0*(
_output_shapes
:��
�
block5_conv3/random_uniform/subSubblock5_conv3/random_uniform/maxblock5_conv3/random_uniform/min*
_output_shapes
: *
T0
�
block5_conv3/random_uniform/mulMul)block5_conv3/random_uniform/RandomUniformblock5_conv3/random_uniform/sub*(
_output_shapes
:��*
T0
�
block5_conv3/random_uniformAddblock5_conv3/random_uniform/mulblock5_conv3/random_uniform/min*(
_output_shapes
:��*
T0
�
block5_conv3/kernel
VariableV2*
	container *
shape:��*
shared_name *(
_output_shapes
:��*
dtype0
�
block5_conv3/kernel/AssignAssignblock5_conv3/kernelblock5_conv3/random_uniform*
use_locking(*&
_class
loc:@block5_conv3/kernel*
validate_shape(*
T0*(
_output_shapes
:��
�
block5_conv3/kernel/readIdentityblock5_conv3/kernel*&
_class
loc:@block5_conv3/kernel*
T0*(
_output_shapes
:��
a
block5_conv3/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    

block5_conv3/bias
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
block5_conv3/bias/AssignAssignblock5_conv3/biasblock5_conv3/Const*
use_locking(*$
_class
loc:@block5_conv3/bias*
validate_shape(*
T0*
_output_shapes	
:�
�
block5_conv3/bias/readIdentityblock5_conv3/bias*$
_class
loc:@block5_conv3/bias*
T0*
_output_shapes	
:�
w
&block5_conv3/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
�
block5_conv3/convolutionConv2Dblock5_conv2/Relublock5_conv3/kernel/read*B
_output_shapes0
.:,����������������������������*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*
paddingSAME
�
block5_conv3/BiasAddBiasAddblock5_conv3/convolutionblock5_conv3/bias/read*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
T0
|
block5_conv3/ReluRelublock5_conv3/BiasAdd*B
_output_shapes0
.:,����������������������������*
T0
�
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
strides
*
T0*
ksize
*
paddingVALID
l
PlaceholderPlaceholder*&
_output_shapes
:@*
dtype0*
shape:@
�
AssignAssignblock1_conv1/kernelPlaceholder*
use_locking( *&
_class
loc:@block1_conv1/kernel*
validate_shape(*
T0*&
_output_shapes
:@
V
Placeholder_1Placeholder*
_output_shapes
:@*
dtype0*
shape:@
�
Assign_1Assignblock1_conv1/biasPlaceholder_1*
use_locking( *$
_class
loc:@block1_conv1/bias*
validate_shape(*
T0*
_output_shapes
:@
n
Placeholder_2Placeholder*&
_output_shapes
:@@*
dtype0*
shape:@@
�
Assign_2Assignblock1_conv2/kernelPlaceholder_2*
use_locking( *&
_class
loc:@block1_conv2/kernel*
validate_shape(*
T0*&
_output_shapes
:@@
V
Placeholder_3Placeholder*
_output_shapes
:@*
dtype0*
shape:@
�
Assign_3Assignblock1_conv2/biasPlaceholder_3*
use_locking( *$
_class
loc:@block1_conv2/bias*
validate_shape(*
T0*
_output_shapes
:@
p
Placeholder_4Placeholder*'
_output_shapes
:@�*
dtype0*
shape:@�
�
Assign_4Assignblock2_conv1/kernelPlaceholder_4*
use_locking( *&
_class
loc:@block2_conv1/kernel*
validate_shape(*
T0*'
_output_shapes
:@�
X
Placeholder_5Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
Assign_5Assignblock2_conv1/biasPlaceholder_5*
use_locking( *$
_class
loc:@block2_conv1/bias*
validate_shape(*
T0*
_output_shapes	
:�
r
Placeholder_6Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
Assign_6Assignblock2_conv2/kernelPlaceholder_6*
use_locking( *&
_class
loc:@block2_conv2/kernel*
validate_shape(*
T0*(
_output_shapes
:��
X
Placeholder_7Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
Assign_7Assignblock2_conv2/biasPlaceholder_7*
use_locking( *$
_class
loc:@block2_conv2/bias*
validate_shape(*
T0*
_output_shapes	
:�
r
Placeholder_8Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
Assign_8Assignblock3_conv1/kernelPlaceholder_8*
use_locking( *&
_class
loc:@block3_conv1/kernel*
validate_shape(*
T0*(
_output_shapes
:��
X
Placeholder_9Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
Assign_9Assignblock3_conv1/biasPlaceholder_9*
use_locking( *$
_class
loc:@block3_conv1/bias*
validate_shape(*
T0*
_output_shapes	
:�
s
Placeholder_10Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
	Assign_10Assignblock3_conv2/kernelPlaceholder_10*
use_locking( *&
_class
loc:@block3_conv2/kernel*
validate_shape(*
T0*(
_output_shapes
:��
Y
Placeholder_11Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
	Assign_11Assignblock3_conv2/biasPlaceholder_11*
use_locking( *$
_class
loc:@block3_conv2/bias*
validate_shape(*
T0*
_output_shapes	
:�
s
Placeholder_12Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
	Assign_12Assignblock3_conv3/kernelPlaceholder_12*
use_locking( *&
_class
loc:@block3_conv3/kernel*
validate_shape(*
T0*(
_output_shapes
:��
Y
Placeholder_13Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
	Assign_13Assignblock3_conv3/biasPlaceholder_13*
use_locking( *$
_class
loc:@block3_conv3/bias*
validate_shape(*
T0*
_output_shapes	
:�
s
Placeholder_14Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
	Assign_14Assignblock4_conv1/kernelPlaceholder_14*
use_locking( *&
_class
loc:@block4_conv1/kernel*
validate_shape(*
T0*(
_output_shapes
:��
Y
Placeholder_15Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
	Assign_15Assignblock4_conv1/biasPlaceholder_15*
use_locking( *$
_class
loc:@block4_conv1/bias*
validate_shape(*
T0*
_output_shapes	
:�
s
Placeholder_16Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
	Assign_16Assignblock4_conv2/kernelPlaceholder_16*
use_locking( *&
_class
loc:@block4_conv2/kernel*
validate_shape(*
T0*(
_output_shapes
:��
Y
Placeholder_17Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
	Assign_17Assignblock4_conv2/biasPlaceholder_17*
use_locking( *$
_class
loc:@block4_conv2/bias*
validate_shape(*
T0*
_output_shapes	
:�
s
Placeholder_18Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
	Assign_18Assignblock4_conv3/kernelPlaceholder_18*
use_locking( *&
_class
loc:@block4_conv3/kernel*
validate_shape(*
T0*(
_output_shapes
:��
Y
Placeholder_19Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
	Assign_19Assignblock4_conv3/biasPlaceholder_19*
use_locking( *$
_class
loc:@block4_conv3/bias*
validate_shape(*
T0*
_output_shapes	
:�
s
Placeholder_20Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
	Assign_20Assignblock5_conv1/kernelPlaceholder_20*
use_locking( *&
_class
loc:@block5_conv1/kernel*
validate_shape(*
T0*(
_output_shapes
:��
Y
Placeholder_21Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
	Assign_21Assignblock5_conv1/biasPlaceholder_21*
use_locking( *$
_class
loc:@block5_conv1/bias*
validate_shape(*
T0*
_output_shapes	
:�
s
Placeholder_22Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
	Assign_22Assignblock5_conv2/kernelPlaceholder_22*
use_locking( *&
_class
loc:@block5_conv2/kernel*
validate_shape(*
T0*(
_output_shapes
:��
Y
Placeholder_23Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
	Assign_23Assignblock5_conv2/biasPlaceholder_23*
use_locking( *$
_class
loc:@block5_conv2/bias*
validate_shape(*
T0*
_output_shapes	
:�
s
Placeholder_24Placeholder*(
_output_shapes
:��*
dtype0*
shape:��
�
	Assign_24Assignblock5_conv3/kernelPlaceholder_24*
use_locking( *&
_class
loc:@block5_conv3/kernel*
validate_shape(*
T0*(
_output_shapes
:��
Y
Placeholder_25Placeholder*
_output_shapes	
:�*
dtype0*
shape:�
�
	Assign_25Assignblock5_conv3/biasPlaceholder_25*
use_locking( *$
_class
loc:@block5_conv3/bias*
validate_shape(*
T0*
_output_shapes	
:�
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
1global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      
�
global_average_pooling2d_1/MeanMeanblock5_pool/MaxPool1global_average_pooling2d_1/Mean/reduction_indices*
	keep_dims( *(
_output_shapes
:����������*

Tidx0*
T0
m
dense_1/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
_
dense_1/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ��
_
dense_1/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �=
�
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
dtype0*
seed���)*
seed2��j*
T0* 
_output_shapes
:
��
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
_output_shapes
: *
T0
�
dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub* 
_output_shapes
:
��*
T0
�
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min* 
_output_shapes
:
��*
T0
�
dense_1/kernel
VariableV2*
	container *
shape:
��*
shared_name * 
_output_shapes
:
��*
dtype0
�
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
use_locking(*!
_class
loc:@dense_1/kernel*
validate_shape(*
T0* 
_output_shapes
:
��
}
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:
��
\
dense_1/ConstConst*
_output_shapes	
:�*
dtype0*
valueB�*    
z
dense_1/bias
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
use_locking(*
_class
loc:@dense_1/bias*
validate_shape(*
T0*
_output_shapes	
:�
r
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
T0*
_output_shapes	
:�
�
dense_1/MatMulMatMulglobal_average_pooling2d_1/Meandense_1/kernel/read*
transpose_b( *(
_output_shapes
:����������*
transpose_a( *
T0
�
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*(
_output_shapes
:����������*
data_formatNHWC*
T0
X
dense_1/ReluReludense_1/BiasAdd*(
_output_shapes
:����������*
T0
m
dense_2/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
_
dense_2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *ܰ��
_
dense_2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ܰ�=
�
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
dtype0*
seed���)*
seed2��*
T0*
_output_shapes
:	�
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
_output_shapes
: *
T0
�
dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
_output_shapes
:	�*
T0

dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
_output_shapes
:	�*
T0
�
dense_2/kernel
VariableV2*
	container *
shape:	�*
shared_name *
_output_shapes
:	�*
dtype0
�
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
use_locking(*!
_class
loc:@dense_2/kernel*
validate_shape(*
T0*
_output_shapes
:	�
|
dense_2/kernel/readIdentitydense_2/kernel*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes
:	�
Z
dense_2/ConstConst*
_output_shapes
:*
dtype0*
valueB*    
x
dense_2/bias
VariableV2*
	container *
shape:*
shared_name *
_output_shapes
:*
dtype0
�
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
use_locking(*
_class
loc:@dense_2/bias*
validate_shape(*
T0*
_output_shapes
:
q
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
T0*
_output_shapes
:
�
dense_2/MatMulMatMuldense_1/Reludense_2/kernel/read*
transpose_b( *'
_output_shapes
:���������*
transpose_a( *
T0
�
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*'
_output_shapes
:���������*
data_formatNHWC*
T0
]
dense_2/SigmoidSigmoiddense_2/BiasAdd*'
_output_shapes
:���������*
T0
^
SGD/iterations/initial_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
r
SGD/iterations
VariableV2*
	container *
shape: *
shared_name *
_output_shapes
: *
dtype0	
�
SGD/iterations/AssignAssignSGD/iterationsSGD/iterations/initial_value*
use_locking(*!
_class
loc:@SGD/iterations*
validate_shape(*
T0	*
_output_shapes
: 
s
SGD/iterations/readIdentitySGD/iterations*!
_class
loc:@SGD/iterations*
T0	*
_output_shapes
: 
Y
SGD/lr/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *��'7
j
SGD/lr
VariableV2*
	container *
shape: *
shared_name *
_output_shapes
: *
dtype0
�
SGD/lr/AssignAssignSGD/lrSGD/lr/initial_value*
use_locking(*
_class
loc:@SGD/lr*
validate_shape(*
T0*
_output_shapes
: 
[
SGD/lr/readIdentitySGD/lr*
_class
loc:@SGD/lr*
T0*
_output_shapes
: 
_
SGD/momentum/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *fff?
p
SGD/momentum
VariableV2*
	container *
shape: *
shared_name *
_output_shapes
: *
dtype0
�
SGD/momentum/AssignAssignSGD/momentumSGD/momentum/initial_value*
use_locking(*
_class
loc:@SGD/momentum*
validate_shape(*
T0*
_output_shapes
: 
m
SGD/momentum/readIdentitySGD/momentum*
_class
loc:@SGD/momentum*
T0*
_output_shapes
: 
\
SGD/decay/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
m
	SGD/decay
VariableV2*
	container *
shape: *
shared_name *
_output_shapes
: *
dtype0
�
SGD/decay/AssignAssign	SGD/decaySGD/decay/initial_value*
use_locking(*
_class
loc:@SGD/decay*
validate_shape(*
T0*
_output_shapes
: 
d
SGD/decay/readIdentity	SGD/decay*
_class
loc:@SGD/decay*
T0*
_output_shapes
: 
�
dense_2_targetPlaceholder*0
_output_shapes
:������������������*
dtype0*%
shape:������������������
q
dense_2_sample_weightsPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
\
loss/dense_2_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���3
\
loss/dense_2_loss/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
o
loss/dense_2_loss/subSubloss/dense_2_loss/sub/xloss/dense_2_loss/Const*
_output_shapes
: *
T0
�
'loss/dense_2_loss/clip_by_value/MinimumMinimumdense_2/Sigmoidloss/dense_2_loss/sub*'
_output_shapes
:���������*
T0
�
loss/dense_2_loss/clip_by_valueMaximum'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*'
_output_shapes
:���������*
T0
^
loss/dense_2_loss/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
loss/dense_2_loss/sub_1Subloss/dense_2_loss/sub_1/xloss/dense_2_loss/clip_by_value*'
_output_shapes
:���������*
T0
�
loss/dense_2_loss/truedivRealDivloss/dense_2_loss/clip_by_valueloss/dense_2_loss/sub_1*'
_output_shapes
:���������*
T0
i
loss/dense_2_loss/LogLogloss/dense_2_loss/truediv*'
_output_shapes
:���������*
T0
�
*loss/dense_2_loss/logistic_loss/zeros_like	ZerosLikeloss/dense_2_loss/Log*'
_output_shapes
:���������*
T0
�
,loss/dense_2_loss/logistic_loss/GreaterEqualGreaterEqualloss/dense_2_loss/Log*loss/dense_2_loss/logistic_loss/zeros_like*'
_output_shapes
:���������*
T0
�
&loss/dense_2_loss/logistic_loss/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualloss/dense_2_loss/Log*loss/dense_2_loss/logistic_loss/zeros_like*'
_output_shapes
:���������*
T0
s
#loss/dense_2_loss/logistic_loss/NegNegloss/dense_2_loss/Log*'
_output_shapes
:���������*
T0
�
(loss/dense_2_loss/logistic_loss/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqual#loss/dense_2_loss/logistic_loss/Negloss/dense_2_loss/Log*'
_output_shapes
:���������*
T0
�
#loss/dense_2_loss/logistic_loss/mulMulloss/dense_2_loss/Logdense_2_target*0
_output_shapes
:������������������*
T0
�
#loss/dense_2_loss/logistic_loss/subSub&loss/dense_2_loss/logistic_loss/Select#loss/dense_2_loss/logistic_loss/mul*0
_output_shapes
:������������������*
T0
�
#loss/dense_2_loss/logistic_loss/ExpExp(loss/dense_2_loss/logistic_loss/Select_1*'
_output_shapes
:���������*
T0
�
%loss/dense_2_loss/logistic_loss/Log1pLog1p#loss/dense_2_loss/logistic_loss/Exp*'
_output_shapes
:���������*
T0
�
loss/dense_2_loss/logistic_lossAdd#loss/dense_2_loss/logistic_loss/sub%loss/dense_2_loss/logistic_loss/Log1p*0
_output_shapes
:������������������*
T0
s
(loss/dense_2_loss/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
loss/dense_2_loss/MeanMeanloss/dense_2_loss/logistic_loss(loss/dense_2_loss/Mean/reduction_indices*
	keep_dims( *#
_output_shapes
:���������*

Tidx0*
T0
m
*loss/dense_2_loss/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB 
�
loss/dense_2_loss/Mean_1Meanloss/dense_2_loss/Mean*loss/dense_2_loss/Mean_1/reduction_indices*
	keep_dims( *#
_output_shapes
:���������*

Tidx0*
T0
|
loss/dense_2_loss/mulMulloss/dense_2_loss/Mean_1dense_2_sample_weights*#
_output_shapes
:���������*
T0
a
loss/dense_2_loss/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
loss/dense_2_loss/NotEqualNotEqualdense_2_sample_weightsloss/dense_2_loss/NotEqual/y*#
_output_shapes
:���������*
T0
w
loss/dense_2_loss/CastCastloss/dense_2_loss/NotEqual*#
_output_shapes
:���������*

SrcT0
*

DstT0
c
loss/dense_2_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
�
loss/dense_2_loss/Mean_2Meanloss/dense_2_loss/Castloss/dense_2_loss/Const_1*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
�
loss/dense_2_loss/truediv_1RealDivloss/dense_2_loss/mulloss/dense_2_loss/Mean_2*#
_output_shapes
:���������*
T0
c
loss/dense_2_loss/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
�
loss/dense_2_loss/Mean_3Meanloss/dense_2_loss/truediv_1loss/dense_2_loss/Const_2*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
O

loss/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
V
loss/mulMul
loss/mul/xloss/dense_2_loss/Mean_3*
_output_shapes
: *
T0
]
metrics/acc/RoundRounddense_2/Sigmoid*'
_output_shapes
:���������*
T0
x
metrics/acc/EqualEqualdense_2_targetmetrics/acc/Round*0
_output_shapes
:������������������*
T0
u
metrics/acc/CastCastmetrics/acc/Equal*0
_output_shapes
:������������������*

SrcT0
*

DstT0
m
"metrics/acc/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
metrics/acc/MeanMeanmetrics/acc/Cast"metrics/acc/Mean/reduction_indices*
	keep_dims( *#
_output_shapes
:���������*

Tidx0*
T0
[
metrics/acc/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
}
metrics/acc/Mean_1Meanmetrics/acc/Meanmetrics/acc/Const*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
|
training/SGD/gradients/ShapeConst*
_class
loc:@loss/mul*
dtype0*
valueB *
_output_shapes
: 
~
training/SGD/gradients/ConstConst*
_class
loc:@loss/mul*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
training/SGD/gradients/FillFilltraining/SGD/gradients/Shapetraining/SGD/gradients/Const*
_class
loc:@loss/mul*
T0*
_output_shapes
: 
�
*training/SGD/gradients/loss/mul_grad/ShapeConst*
_class
loc:@loss/mul*
dtype0*
valueB *
_output_shapes
: 
�
,training/SGD/gradients/loss/mul_grad/Shape_1Const*
_class
loc:@loss/mul*
dtype0*
valueB *
_output_shapes
: 
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
loc:@loss/mul*

Tidx0*
T0*
_output_shapes
:
�
,training/SGD/gradients/loss/mul_grad/ReshapeReshape(training/SGD/gradients/loss/mul_grad/Sum*training/SGD/gradients/loss/mul_grad/Shape*
_class
loc:@loss/mul*
Tshape0*
T0*
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
loc:@loss/mul*

Tidx0*
T0*
_output_shapes
:
�
.training/SGD/gradients/loss/mul_grad/Reshape_1Reshape*training/SGD/gradients/loss/mul_grad/Sum_1,training/SGD/gradients/loss/mul_grad/Shape_1*
_class
loc:@loss/mul*
Tshape0*
T0*
_output_shapes
: 
�
Btraining/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Reshape/shapeConst*+
_class!
loc:@loss/dense_2_loss/Mean_3*
dtype0*
valueB:*
_output_shapes
:
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/ReshapeReshape.training/SGD/gradients/loss/mul_grad/Reshape_1Btraining/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Reshape/shape*+
_class!
loc:@loss/dense_2_loss/Mean_3*
Tshape0*
T0*
_output_shapes
:
�
:training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/ShapeShapeloss/dense_2_loss/truediv_1*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*
_output_shapes
:
�
9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/TileTile<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Reshape:training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape*

Tmultiples0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*#
_output_shapes
:���������
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape_1Shapeloss/dense_2_loss/truediv_1*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*
_output_shapes
:
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape_2Const*+
_class!
loc:@loss/dense_2_loss/Mean_3*
dtype0*
valueB *
_output_shapes
: 
�
:training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/ConstConst*+
_class!
loc:@loss/dense_2_loss/Mean_3*
dtype0*
valueB: *
_output_shapes
:
�
9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/ProdProd<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape_1:training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Const*
	keep_dims( *+
_class!
loc:@loss/dense_2_loss/Mean_3*

Tidx0*
T0*
_output_shapes
: 
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Const_1Const*+
_class!
loc:@loss/dense_2_loss/Mean_3*
dtype0*
valueB: *
_output_shapes
:
�
;training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Prod_1Prod<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Shape_2<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Const_1*
	keep_dims( *+
_class!
loc:@loss/dense_2_loss/Mean_3*

Tidx0*
T0*
_output_shapes
: 
�
>training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Maximum/yConst*+
_class!
loc:@loss/dense_2_loss/Mean_3*
dtype0*
value	B :*
_output_shapes
: 
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

SrcT0*

DstT0*
_output_shapes
: 
�
<training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/truedivRealDiv9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Tile9training/SGD/gradients/loss/dense_2_loss/Mean_3_grad/Cast*+
_class!
loc:@loss/dense_2_loss/Mean_3*
T0*#
_output_shapes
:���������
�
=training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/ShapeShapeloss/dense_2_loss/mul*
out_type0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
T0*
_output_shapes
:
�
?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1Const*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
dtype0*
valueB *
_output_shapes
: 
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
" loc:@loss/dense_2_loss/truediv_1*

Tidx0*
T0*
_output_shapes
:
�
?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/ReshapeReshape;training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Sum=training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Shape*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
Tshape0*
T0*#
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
" loc:@loss/dense_2_loss/truediv_1*

Tidx0*
T0*
_output_shapes
:
�
Atraining/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Reshape_1Reshape=training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1?training/SGD/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
Tshape0*
T0*
_output_shapes
: 
�
7training/SGD/gradients/loss/dense_2_loss/mul_grad/ShapeShapeloss/dense_2_loss/Mean_1*
out_type0*(
_class
loc:@loss/dense_2_loss/mul*
T0*
_output_shapes
:
�
9training/SGD/gradients/loss/dense_2_loss/mul_grad/Shape_1Shapedense_2_sample_weights*
out_type0*(
_class
loc:@loss/dense_2_loss/mul*
T0*
_output_shapes
:
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
loc:@loss/dense_2_loss/mul*

Tidx0*
T0*
_output_shapes
:
�
9training/SGD/gradients/loss/dense_2_loss/mul_grad/ReshapeReshape5training/SGD/gradients/loss/dense_2_loss/mul_grad/Sum7training/SGD/gradients/loss/dense_2_loss/mul_grad/Shape*(
_class
loc:@loss/dense_2_loss/mul*
Tshape0*
T0*#
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
loc:@loss/dense_2_loss/mul*

Tidx0*
T0*
_output_shapes
:
�
;training/SGD/gradients/loss/dense_2_loss/mul_grad/Reshape_1Reshape7training/SGD/gradients/loss/dense_2_loss/mul_grad/Sum_19training/SGD/gradients/loss/dense_2_loss/mul_grad/Shape_1*(
_class
loc:@loss/dense_2_loss/mul*
Tshape0*
T0*#
_output_shapes
:���������
�
:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/ShapeShapeloss/dense_2_loss/Mean*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
:
�
9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/SizeConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
value	B :*
_output_shapes
: 
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
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_1Const*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
valueB: *
_output_shapes
:
�
@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range/startConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
value	B : *
_output_shapes
: 
�
@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range/deltaConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
value	B :*
_output_shapes
: 
�
:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/rangeRange@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range/start9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Size@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range/delta*+
_class!
loc:@loss/dense_2_loss/Mean_1*

Tidx0*
_output_shapes
:
�
?training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Fill/valueConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
value	B :*
_output_shapes
: 
�
9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/FillFill<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_1?training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Fill/value*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
: 
�
Btraining/SGD/gradients/loss/dense_2_loss/Mean_1_grad/DynamicStitchDynamicStitch:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/range8training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/mod:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Fill*
N*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*#
_output_shapes
:���������
�
>training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Maximum/yConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
value	B :*
_output_shapes
: 
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
loc:@loss/dense_2_loss/Mean_1*
Tshape0*
T0*
_output_shapes
:
�
9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/TileTile<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Reshape=training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/floordiv*

Tmultiples0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
:
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_2Shapeloss/dense_2_loss/Mean*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
:
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_3Shapeloss/dense_2_loss/Mean_1*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*
_output_shapes
:
�
:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/ConstConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
valueB: *
_output_shapes
:
�
9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/ProdProd<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_2:training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Const*
	keep_dims( *+
_class!
loc:@loss/dense_2_loss/Mean_1*

Tidx0*
T0*
_output_shapes
: 
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Const_1Const*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
valueB: *
_output_shapes
:
�
;training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Prod_1Prod<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Shape_3<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Const_1*
	keep_dims( *+
_class!
loc:@loss/dense_2_loss/Mean_1*

Tidx0*
T0*
_output_shapes
: 
�
@training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1/yConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
value	B :*
_output_shapes
: 
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

SrcT0*

DstT0*
_output_shapes
: 
�
<training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/truedivRealDiv9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Tile9training/SGD/gradients/loss/dense_2_loss/Mean_1_grad/Cast*+
_class!
loc:@loss/dense_2_loss/Mean_1*
T0*#
_output_shapes
:���������
�
8training/SGD/gradients/loss/dense_2_loss/Mean_grad/ShapeShapeloss/dense_2_loss/logistic_loss*
out_type0*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
:
�
7training/SGD/gradients/loss/dense_2_loss/Mean_grad/SizeConst*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
value	B :*
_output_shapes
: 
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
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_1Const*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
valueB *
_output_shapes
: 
�
>training/SGD/gradients/loss/dense_2_loss/Mean_grad/range/startConst*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
value	B : *
_output_shapes
: 
�
>training/SGD/gradients/loss/dense_2_loss/Mean_grad/range/deltaConst*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
value	B :*
_output_shapes
: 
�
8training/SGD/gradients/loss/dense_2_loss/Mean_grad/rangeRange>training/SGD/gradients/loss/dense_2_loss/Mean_grad/range/start7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Size>training/SGD/gradients/loss/dense_2_loss/Mean_grad/range/delta*)
_class
loc:@loss/dense_2_loss/Mean*

Tidx0*
_output_shapes
:
�
=training/SGD/gradients/loss/dense_2_loss/Mean_grad/Fill/valueConst*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
value	B :*
_output_shapes
: 
�
7training/SGD/gradients/loss/dense_2_loss/Mean_grad/FillFill:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_1=training/SGD/gradients/loss/dense_2_loss/Mean_grad/Fill/value*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
: 
�
@training/SGD/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchDynamicStitch8training/SGD/gradients/loss/dense_2_loss/Mean_grad/range6training/SGD/gradients/loss/dense_2_loss/Mean_grad/mod8training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Fill*
N*)
_class
loc:@loss/dense_2_loss/Mean*
T0*#
_output_shapes
:���������
�
<training/SGD/gradients/loss/dense_2_loss/Mean_grad/Maximum/yConst*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
value	B :*
_output_shapes
: 
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
loc:@loss/dense_2_loss/Mean*
Tshape0*
T0*
_output_shapes
:
�
7training/SGD/gradients/loss/dense_2_loss/Mean_grad/TileTile:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Reshape;training/SGD/gradients/loss/dense_2_loss/Mean_grad/floordiv*

Tmultiples0*)
_class
loc:@loss/dense_2_loss/Mean*
T0*0
_output_shapes
:������������������
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_2Shapeloss/dense_2_loss/logistic_loss*
out_type0*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
:
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_3Shapeloss/dense_2_loss/Mean*
out_type0*)
_class
loc:@loss/dense_2_loss/Mean*
T0*
_output_shapes
:
�
8training/SGD/gradients/loss/dense_2_loss/Mean_grad/ConstConst*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
valueB: *
_output_shapes
:
�
7training/SGD/gradients/loss/dense_2_loss/Mean_grad/ProdProd:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_28training/SGD/gradients/loss/dense_2_loss/Mean_grad/Const*
	keep_dims( *)
_class
loc:@loss/dense_2_loss/Mean*

Tidx0*
T0*
_output_shapes
: 
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Const_1Const*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
valueB: *
_output_shapes
:
�
9training/SGD/gradients/loss/dense_2_loss/Mean_grad/Prod_1Prod:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Shape_3:training/SGD/gradients/loss/dense_2_loss/Mean_grad/Const_1*
	keep_dims( *)
_class
loc:@loss/dense_2_loss/Mean*

Tidx0*
T0*
_output_shapes
: 
�
>training/SGD/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/yConst*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
value	B :*
_output_shapes
: 
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

SrcT0*

DstT0*
_output_shapes
: 
�
:training/SGD/gradients/loss/dense_2_loss/Mean_grad/truedivRealDiv7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Tile7training/SGD/gradients/loss/dense_2_loss/Mean_grad/Cast*)
_class
loc:@loss/dense_2_loss/Mean*
T0*0
_output_shapes
:������������������
�
Atraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/ShapeShape#loss/dense_2_loss/logistic_loss/sub*
out_type0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
T0*
_output_shapes
:
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1Shape%loss/dense_2_loss/logistic_loss/Log1p*
out_type0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
T0*
_output_shapes
:
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
&$loc:@loss/dense_2_loss/logistic_loss*

Tidx0*
T0*
_output_shapes
:
�
Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeReshape?training/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/SumAtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Shape*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
Tshape0*
T0*0
_output_shapes
:������������������
�
Atraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Sum_1Sum:training/SGD/gradients/loss/dense_2_loss/Mean_grad/truedivStraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgs:1*
	keep_dims( *2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*

Tidx0*
T0*
_output_shapes
:
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1ReshapeAtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Sum_1Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
Tshape0*
T0*'
_output_shapes
:���������
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ShapeShape&loss/dense_2_loss/logistic_loss/Select*
out_type0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
T0*
_output_shapes
:
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1Shape#loss/dense_2_loss/logistic_loss/mul*
out_type0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
T0*
_output_shapes
:
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
*(loc:@loss/dense_2_loss/logistic_loss/sub*

Tidx0*
T0*
_output_shapes
:
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ReshapeReshapeCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/SumEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
Tshape0*
T0*'
_output_shapes
:���������
�
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Sum_1SumCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeWtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*

Tidx0*
T0*
_output_shapes
:
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
*(loc:@loss/dense_2_loss/logistic_loss/sub*
Tshape0*
T0*0
_output_shapes
:������������������
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add/xConstF^training/SGD/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*
dtype0*
valueB
 *  �?*
_output_shapes
: 
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
Etraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ShapeShapeloss/dense_2_loss/Log*
out_type0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*
_output_shapes
:
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1Shapedense_2_target*
out_type0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
T0*
_output_shapes
:
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
*(loc:@loss/dense_2_loss/logistic_loss/mul*

Tidx0*
T0*
_output_shapes
:
�
Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ReshapeReshapeCtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/SumEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
Tshape0*
T0*'
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
*(loc:@loss/dense_2_loss/logistic_loss/mul*

Tidx0*
T0*
_output_shapes
:
�
Itraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Reshape_1ReshapeEtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Sum_1Gtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
Tshape0*
T0*0
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
training/SGD/gradients/AddNAddNItraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_grad/SelectGtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ReshapeMtraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select_1Ctraining/SGD/gradients/loss/dense_2_loss/logistic_loss/Neg_grad/Neg*
N*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*
T0*'
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
;training/SGD/gradients/loss/dense_2_loss/truediv_grad/ShapeShapeloss/dense_2_loss/clip_by_value*
out_type0*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*
_output_shapes
:
�
=training/SGD/gradients/loss/dense_2_loss/truediv_grad/Shape_1Shapeloss/dense_2_loss/sub_1*
out_type0*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*
_output_shapes
:
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
 loc:@loss/dense_2_loss/truediv*

Tidx0*
T0*
_output_shapes
:
�
=training/SGD/gradients/loss/dense_2_loss/truediv_grad/ReshapeReshape9training/SGD/gradients/loss/dense_2_loss/truediv_grad/Sum;training/SGD/gradients/loss/dense_2_loss/truediv_grad/Shape*,
_class"
 loc:@loss/dense_2_loss/truediv*
Tshape0*
T0*'
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
 loc:@loss/dense_2_loss/truediv*

Tidx0*
T0*
_output_shapes
:
�
?training/SGD/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Reshape;training/SGD/gradients/loss/dense_2_loss/truediv_grad/Sum_1=training/SGD/gradients/loss/dense_2_loss/truediv_grad/Shape_1*,
_class"
 loc:@loss/dense_2_loss/truediv*
Tshape0*
T0*'
_output_shapes
:���������
�
9training/SGD/gradients/loss/dense_2_loss/sub_1_grad/ShapeConst**
_class 
loc:@loss/dense_2_loss/sub_1*
dtype0*
valueB *
_output_shapes
: 
�
;training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Shape_1Shapeloss/dense_2_loss/clip_by_value*
out_type0**
_class 
loc:@loss/dense_2_loss/sub_1*
T0*
_output_shapes
:
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
loc:@loss/dense_2_loss/sub_1*

Tidx0*
T0*
_output_shapes
:
�
;training/SGD/gradients/loss/dense_2_loss/sub_1_grad/ReshapeReshape7training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Sum9training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Shape**
_class 
loc:@loss/dense_2_loss/sub_1*
Tshape0*
T0*
_output_shapes
: 
�
9training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Sum_1Sum?training/SGD/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Ktraining/SGD/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( **
_class 
loc:@loss/dense_2_loss/sub_1*

Tidx0*
T0*
_output_shapes
:
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
loc:@loss/dense_2_loss/sub_1*
Tshape0*
T0*'
_output_shapes
:���������
�
training/SGD/gradients/AddN_1AddN=training/SGD/gradients/loss/dense_2_loss/truediv_grad/Reshape=training/SGD/gradients/loss/dense_2_loss/sub_1_grad/Reshape_1*
N*,
_class"
 loc:@loss/dense_2_loss/truediv*
T0*'
_output_shapes
:���������
�
Atraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeShape'loss/dense_2_loss/clip_by_value/Minimum*
out_type0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*
_output_shapes
:
�
Ctraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1Const*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
dtype0*
valueB *
_output_shapes
: 
�
Ctraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Shapetraining/SGD/gradients/AddN_1*
out_type0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
T0*
_output_shapes
:
�
Gtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/ConstConst*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
dtype0*
valueB
 *    *
_output_shapes
: 
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
&$loc:@loss/dense_2_loss/clip_by_value*

Tidx0*
T0*
_output_shapes
:
�
Ctraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeReshape?training/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/SumAtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
Tshape0*
T0*'
_output_shapes
:���������
�
Atraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1SumDtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1Straining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*

Tidx0*
T0*
_output_shapes
:
�
Etraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_1ReshapeAtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1Ctraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
Tshape0*
T0*
_output_shapes
: 
�
Itraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeShapedense_2/Sigmoid*
out_type0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*
_output_shapes
:
�
Ktraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1Const*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
dtype0*
valueB *
_output_shapes
: 
�
Ktraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2ShapeCtraining/SGD/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*
out_type0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
T0*
_output_shapes
:
�
Otraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/ConstConst*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
dtype0*
valueB
 *    *
_output_shapes
: 
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
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*

Tidx0*
T0*
_output_shapes
:
�
Ktraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ReshapeReshapeGtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumItraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
Tshape0*
T0*'
_output_shapes
:���������
�
Itraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1SumLtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1[training/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*

Tidx0*
T0*
_output_shapes
:
�
Mtraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeItraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1Ktraining/SGD/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
Tshape0*
T0*
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
loc:@dense_2/BiasAdd*
data_formatNHWC*
T0*
_output_shapes
:
�
1training/SGD/gradients/dense_2/MatMul_grad/MatMulMatMul7training/SGD/gradients/dense_2/Sigmoid_grad/SigmoidGraddense_2/kernel/read*
transpose_b(*!
_class
loc:@dense_2/MatMul*
transpose_a( *
T0*(
_output_shapes
:����������
�
3training/SGD/gradients/dense_2/MatMul_grad/MatMul_1MatMuldense_1/Relu7training/SGD/gradients/dense_2/Sigmoid_grad/SigmoidGrad*
transpose_b( *!
_class
loc:@dense_2/MatMul*
transpose_a(*
T0*
_output_shapes
:	�
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
loc:@dense_1/BiasAdd*
data_formatNHWC*
T0*
_output_shapes	
:�
�
1training/SGD/gradients/dense_1/MatMul_grad/MatMulMatMul1training/SGD/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*
transpose_b(*!
_class
loc:@dense_1/MatMul*
transpose_a( *
T0*(
_output_shapes
:����������
�
3training/SGD/gradients/dense_1/MatMul_grad/MatMul_1MatMulglobal_average_pooling2d_1/Mean1training/SGD/gradients/dense_1/Relu_grad/ReluGrad*
transpose_b( *!
_class
loc:@dense_1/MatMul*
transpose_a(*
T0* 
_output_shapes
:
��
�
Atraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/ShapeShapeblock5_pool/MaxPool*
out_type0*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:
�
@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/SizeConst*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
dtype0*
value	B :*
_output_shapes
: 
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
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_1Const*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
dtype0*
valueB:*
_output_shapes
:
�
Gtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range/startConst*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
dtype0*
value	B : *
_output_shapes
: 
�
Gtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range/deltaConst*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
dtype0*
value	B :*
_output_shapes
: 
�
Atraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/rangeRangeGtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range/start@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/SizeGtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range/delta*2
_class(
&$loc:@global_average_pooling2d_1/Mean*

Tidx0*
_output_shapes
:
�
Ftraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Fill/valueConst*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
dtype0*
value	B :*
_output_shapes
: 
�
@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/FillFillCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_1Ftraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Fill/value*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:
�
Itraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/DynamicStitchDynamicStitchAtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/range?training/SGD/gradients/global_average_pooling2d_1/Mean_grad/modAtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/Fill*
N*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*#
_output_shapes
:���������
�
Etraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Maximum/yConst*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
dtype0*
value	B :*
_output_shapes
: 
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
&$loc:@global_average_pooling2d_1/Mean*
Tshape0*
T0*
_output_shapes
:
�
@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/TileTileCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/ReshapeDtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/floordiv*

Tmultiples0*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*J
_output_shapes8
6:4������������������������������������
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_2Shapeblock5_pool/MaxPool*
out_type0*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_3Shapeglobal_average_pooling2d_1/Mean*
out_type0*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*
_output_shapes
:
�
Atraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/ConstConst*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
dtype0*
valueB: *
_output_shapes
:
�
@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/ProdProdCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_2Atraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Const*
	keep_dims( *2
_class(
&$loc:@global_average_pooling2d_1/Mean*

Tidx0*
T0*
_output_shapes
: 
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Const_1Const*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
dtype0*
valueB: *
_output_shapes
:
�
Btraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Prod_1ProdCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Shape_3Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Const_1*
	keep_dims( *2
_class(
&$loc:@global_average_pooling2d_1/Mean*

Tidx0*
T0*
_output_shapes
: 
�
Gtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/Maximum_1/yConst*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
dtype0*
value	B :*
_output_shapes
: 
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

SrcT0*

DstT0*
_output_shapes
: 
�
Ctraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/truedivRealDiv@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/Tile@training/SGD/gradients/global_average_pooling2d_1/Mean_grad/Cast*2
_class(
&$loc:@global_average_pooling2d_1/Mean*
T0*B
_output_shapes0
.:,����������������������������
�
;training/SGD/gradients/block5_pool/MaxPool_grad/MaxPoolGradMaxPoolGradblock5_conv3/Relublock5_pool/MaxPoolCtraining/SGD/gradients/global_average_pooling2d_1/Mean_grad/truediv*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
strides
*
T0*&
_class
loc:@block5_pool/MaxPool*
ksize
*
paddingVALID
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
loc:@block5_conv3/BiasAdd*
data_formatNHWC*
T0*
_output_shapes	
:�
�
;training/SGD/gradients/block5_conv3/convolution_grad/ShapeNShapeNblock5_conv2/Relublock5_conv3/kernel/read*
N*+
_class!
loc:@block5_conv3/convolution* 
_output_shapes
::*
T0*
out_type0
�
Htraining/SGD/gradients/block5_conv3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block5_conv3/convolution_grad/ShapeNblock5_conv3/kernel/read6training/SGD/gradients/block5_conv3/Relu_grad/ReluGrad*B
_output_shapes0
.:,����������������������������*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*+
_class!
loc:@block5_conv3/convolution*
paddingSAME
�
Itraining/SGD/gradients/block5_conv3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock5_conv2/Relu=training/SGD/gradients/block5_conv3/convolution_grad/ShapeN:16training/SGD/gradients/block5_conv3/Relu_grad/ReluGrad*(
_output_shapes
:��*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*+
_class!
loc:@block5_conv3/convolution*
paddingSAME
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
loc:@block5_conv2/BiasAdd*
data_formatNHWC*
T0*
_output_shapes	
:�
�
;training/SGD/gradients/block5_conv2/convolution_grad/ShapeNShapeNblock5_conv1/Relublock5_conv2/kernel/read*
N*+
_class!
loc:@block5_conv2/convolution* 
_output_shapes
::*
T0*
out_type0
�
Htraining/SGD/gradients/block5_conv2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block5_conv2/convolution_grad/ShapeNblock5_conv2/kernel/read6training/SGD/gradients/block5_conv2/Relu_grad/ReluGrad*B
_output_shapes0
.:,����������������������������*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*+
_class!
loc:@block5_conv2/convolution*
paddingSAME
�
Itraining/SGD/gradients/block5_conv2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock5_conv1/Relu=training/SGD/gradients/block5_conv2/convolution_grad/ShapeN:16training/SGD/gradients/block5_conv2/Relu_grad/ReluGrad*(
_output_shapes
:��*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*+
_class!
loc:@block5_conv2/convolution*
paddingSAME
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
loc:@block5_conv1/BiasAdd*
data_formatNHWC*
T0*
_output_shapes	
:�
�
;training/SGD/gradients/block5_conv1/convolution_grad/ShapeNShapeNblock4_pool/MaxPoolblock5_conv1/kernel/read*
N*+
_class!
loc:@block5_conv1/convolution* 
_output_shapes
::*
T0*
out_type0
�
Htraining/SGD/gradients/block5_conv1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block5_conv1/convolution_grad/ShapeNblock5_conv1/kernel/read6training/SGD/gradients/block5_conv1/Relu_grad/ReluGrad*B
_output_shapes0
.:,����������������������������*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*+
_class!
loc:@block5_conv1/convolution*
paddingSAME
�
Itraining/SGD/gradients/block5_conv1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock4_pool/MaxPool=training/SGD/gradients/block5_conv1/convolution_grad/ShapeN:16training/SGD/gradients/block5_conv1/Relu_grad/ReluGrad*(
_output_shapes
:��*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*+
_class!
loc:@block5_conv1/convolution*
paddingSAME
�
;training/SGD/gradients/block4_pool/MaxPool_grad/MaxPoolGradMaxPoolGradblock4_conv3/Relublock4_pool/MaxPoolHtraining/SGD/gradients/block5_conv1/convolution_grad/Conv2DBackpropInput*B
_output_shapes0
.:,����������������������������*
data_formatNHWC*
strides
*
T0*&
_class
loc:@block4_pool/MaxPool*
ksize
*
paddingVALID
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
loc:@block4_conv3/BiasAdd*
data_formatNHWC*
T0*
_output_shapes	
:�
�
;training/SGD/gradients/block4_conv3/convolution_grad/ShapeNShapeNblock4_conv2/Relublock4_conv3/kernel/read*
N*+
_class!
loc:@block4_conv3/convolution* 
_output_shapes
::*
T0*
out_type0
�
Htraining/SGD/gradients/block4_conv3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block4_conv3/convolution_grad/ShapeNblock4_conv3/kernel/read6training/SGD/gradients/block4_conv3/Relu_grad/ReluGrad*B
_output_shapes0
.:,����������������������������*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*+
_class!
loc:@block4_conv3/convolution*
paddingSAME
�
Itraining/SGD/gradients/block4_conv3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock4_conv2/Relu=training/SGD/gradients/block4_conv3/convolution_grad/ShapeN:16training/SGD/gradients/block4_conv3/Relu_grad/ReluGrad*(
_output_shapes
:��*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*+
_class!
loc:@block4_conv3/convolution*
paddingSAME
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
loc:@block4_conv2/BiasAdd*
data_formatNHWC*
T0*
_output_shapes	
:�
�
;training/SGD/gradients/block4_conv2/convolution_grad/ShapeNShapeNblock4_conv1/Relublock4_conv2/kernel/read*
N*+
_class!
loc:@block4_conv2/convolution* 
_output_shapes
::*
T0*
out_type0
�
Htraining/SGD/gradients/block4_conv2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block4_conv2/convolution_grad/ShapeNblock4_conv2/kernel/read6training/SGD/gradients/block4_conv2/Relu_grad/ReluGrad*B
_output_shapes0
.:,����������������������������*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*+
_class!
loc:@block4_conv2/convolution*
paddingSAME
�
Itraining/SGD/gradients/block4_conv2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock4_conv1/Relu=training/SGD/gradients/block4_conv2/convolution_grad/ShapeN:16training/SGD/gradients/block4_conv2/Relu_grad/ReluGrad*(
_output_shapes
:��*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*+
_class!
loc:@block4_conv2/convolution*
paddingSAME
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
loc:@block4_conv1/BiasAdd*
data_formatNHWC*
T0*
_output_shapes	
:�
�
;training/SGD/gradients/block4_conv1/convolution_grad/ShapeNShapeNblock3_pool/MaxPoolblock4_conv1/kernel/read*
N*+
_class!
loc:@block4_conv1/convolution* 
_output_shapes
::*
T0*
out_type0
�
Htraining/SGD/gradients/block4_conv1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput;training/SGD/gradients/block4_conv1/convolution_grad/ShapeNblock4_conv1/kernel/read6training/SGD/gradients/block4_conv1/Relu_grad/ReluGrad*B
_output_shapes0
.:,����������������������������*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*+
_class!
loc:@block4_conv1/convolution*
paddingSAME
�
Itraining/SGD/gradients/block4_conv1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterblock3_pool/MaxPool=training/SGD/gradients/block4_conv1/convolution_grad/ShapeN:16training/SGD/gradients/block4_conv1/Relu_grad/ReluGrad*(
_output_shapes
:��*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
T0*+
_class!
loc:@block4_conv1/convolution*
paddingSAME
^
training/SGD/AssignAdd/valueConst*
_output_shapes
: *
dtype0	*
value	B	 R
�
training/SGD/AssignAdd	AssignAddSGD/iterationstraining/SGD/AssignAdd/value*!
_class
loc:@SGD/iterations*
use_locking( *
T0	*
_output_shapes
: 
{
training/SGD/ConstConst*(
_output_shapes
:��*
dtype0*'
valueB��*    
�
training/SGD/Variable
VariableV2*
	container *
shape:��*
shared_name *(
_output_shapes
:��*
dtype0
�
training/SGD/Variable/AssignAssigntraining/SGD/Variabletraining/SGD/Const*
use_locking(*(
_class
loc:@training/SGD/Variable*
validate_shape(*
T0*(
_output_shapes
:��
�
training/SGD/Variable/readIdentitytraining/SGD/Variable*(
_class
loc:@training/SGD/Variable*
T0*(
_output_shapes
:��
c
training/SGD/Const_1Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
training/SGD/Variable_1
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
training/SGD/Variable_1/AssignAssigntraining/SGD/Variable_1training/SGD/Const_1*
use_locking(**
_class 
loc:@training/SGD/Variable_1*
validate_shape(*
T0*
_output_shapes	
:�
�
training/SGD/Variable_1/readIdentitytraining/SGD/Variable_1**
_class 
loc:@training/SGD/Variable_1*
T0*
_output_shapes	
:�
}
training/SGD/Const_2Const*(
_output_shapes
:��*
dtype0*'
valueB��*    
�
training/SGD/Variable_2
VariableV2*
	container *
shape:��*
shared_name *(
_output_shapes
:��*
dtype0
�
training/SGD/Variable_2/AssignAssigntraining/SGD/Variable_2training/SGD/Const_2*
use_locking(**
_class 
loc:@training/SGD/Variable_2*
validate_shape(*
T0*(
_output_shapes
:��
�
training/SGD/Variable_2/readIdentitytraining/SGD/Variable_2**
_class 
loc:@training/SGD/Variable_2*
T0*(
_output_shapes
:��
c
training/SGD/Const_3Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
training/SGD/Variable_3
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
training/SGD/Variable_3/AssignAssigntraining/SGD/Variable_3training/SGD/Const_3*
use_locking(**
_class 
loc:@training/SGD/Variable_3*
validate_shape(*
T0*
_output_shapes	
:�
�
training/SGD/Variable_3/readIdentitytraining/SGD/Variable_3**
_class 
loc:@training/SGD/Variable_3*
T0*
_output_shapes	
:�
}
training/SGD/Const_4Const*(
_output_shapes
:��*
dtype0*'
valueB��*    
�
training/SGD/Variable_4
VariableV2*
	container *
shape:��*
shared_name *(
_output_shapes
:��*
dtype0
�
training/SGD/Variable_4/AssignAssigntraining/SGD/Variable_4training/SGD/Const_4*
use_locking(**
_class 
loc:@training/SGD/Variable_4*
validate_shape(*
T0*(
_output_shapes
:��
�
training/SGD/Variable_4/readIdentitytraining/SGD/Variable_4**
_class 
loc:@training/SGD/Variable_4*
T0*(
_output_shapes
:��
c
training/SGD/Const_5Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
training/SGD/Variable_5
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
training/SGD/Variable_5/AssignAssigntraining/SGD/Variable_5training/SGD/Const_5*
use_locking(**
_class 
loc:@training/SGD/Variable_5*
validate_shape(*
T0*
_output_shapes	
:�
�
training/SGD/Variable_5/readIdentitytraining/SGD/Variable_5**
_class 
loc:@training/SGD/Variable_5*
T0*
_output_shapes	
:�
}
training/SGD/Const_6Const*(
_output_shapes
:��*
dtype0*'
valueB��*    
�
training/SGD/Variable_6
VariableV2*
	container *
shape:��*
shared_name *(
_output_shapes
:��*
dtype0
�
training/SGD/Variable_6/AssignAssigntraining/SGD/Variable_6training/SGD/Const_6*
use_locking(**
_class 
loc:@training/SGD/Variable_6*
validate_shape(*
T0*(
_output_shapes
:��
�
training/SGD/Variable_6/readIdentitytraining/SGD/Variable_6**
_class 
loc:@training/SGD/Variable_6*
T0*(
_output_shapes
:��
c
training/SGD/Const_7Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
training/SGD/Variable_7
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
training/SGD/Variable_7/AssignAssigntraining/SGD/Variable_7training/SGD/Const_7*
use_locking(**
_class 
loc:@training/SGD/Variable_7*
validate_shape(*
T0*
_output_shapes	
:�
�
training/SGD/Variable_7/readIdentitytraining/SGD/Variable_7**
_class 
loc:@training/SGD/Variable_7*
T0*
_output_shapes	
:�
}
training/SGD/Const_8Const*(
_output_shapes
:��*
dtype0*'
valueB��*    
�
training/SGD/Variable_8
VariableV2*
	container *
shape:��*
shared_name *(
_output_shapes
:��*
dtype0
�
training/SGD/Variable_8/AssignAssigntraining/SGD/Variable_8training/SGD/Const_8*
use_locking(**
_class 
loc:@training/SGD/Variable_8*
validate_shape(*
T0*(
_output_shapes
:��
�
training/SGD/Variable_8/readIdentitytraining/SGD/Variable_8**
_class 
loc:@training/SGD/Variable_8*
T0*(
_output_shapes
:��
c
training/SGD/Const_9Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
training/SGD/Variable_9
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
training/SGD/Variable_9/AssignAssigntraining/SGD/Variable_9training/SGD/Const_9*
use_locking(**
_class 
loc:@training/SGD/Variable_9*
validate_shape(*
T0*
_output_shapes	
:�
�
training/SGD/Variable_9/readIdentitytraining/SGD/Variable_9**
_class 
loc:@training/SGD/Variable_9*
T0*
_output_shapes	
:�
~
training/SGD/Const_10Const*(
_output_shapes
:��*
dtype0*'
valueB��*    
�
training/SGD/Variable_10
VariableV2*
	container *
shape:��*
shared_name *(
_output_shapes
:��*
dtype0
�
training/SGD/Variable_10/AssignAssigntraining/SGD/Variable_10training/SGD/Const_10*
use_locking(*+
_class!
loc:@training/SGD/Variable_10*
validate_shape(*
T0*(
_output_shapes
:��
�
training/SGD/Variable_10/readIdentitytraining/SGD/Variable_10*+
_class!
loc:@training/SGD/Variable_10*
T0*(
_output_shapes
:��
d
training/SGD/Const_11Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
training/SGD/Variable_11
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
training/SGD/Variable_11/AssignAssigntraining/SGD/Variable_11training/SGD/Const_11*
use_locking(*+
_class!
loc:@training/SGD/Variable_11*
validate_shape(*
T0*
_output_shapes	
:�
�
training/SGD/Variable_11/readIdentitytraining/SGD/Variable_11*+
_class!
loc:@training/SGD/Variable_11*
T0*
_output_shapes	
:�
n
training/SGD/Const_12Const* 
_output_shapes
:
��*
dtype0*
valueB
��*    
�
training/SGD/Variable_12
VariableV2*
	container *
shape:
��*
shared_name * 
_output_shapes
:
��*
dtype0
�
training/SGD/Variable_12/AssignAssigntraining/SGD/Variable_12training/SGD/Const_12*
use_locking(*+
_class!
loc:@training/SGD/Variable_12*
validate_shape(*
T0* 
_output_shapes
:
��
�
training/SGD/Variable_12/readIdentitytraining/SGD/Variable_12*+
_class!
loc:@training/SGD/Variable_12*
T0* 
_output_shapes
:
��
d
training/SGD/Const_13Const*
_output_shapes	
:�*
dtype0*
valueB�*    
�
training/SGD/Variable_13
VariableV2*
	container *
shape:�*
shared_name *
_output_shapes	
:�*
dtype0
�
training/SGD/Variable_13/AssignAssigntraining/SGD/Variable_13training/SGD/Const_13*
use_locking(*+
_class!
loc:@training/SGD/Variable_13*
validate_shape(*
T0*
_output_shapes	
:�
�
training/SGD/Variable_13/readIdentitytraining/SGD/Variable_13*+
_class!
loc:@training/SGD/Variable_13*
T0*
_output_shapes	
:�
l
training/SGD/Const_14Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�
training/SGD/Variable_14
VariableV2*
	container *
shape:	�*
shared_name *
_output_shapes
:	�*
dtype0
�
training/SGD/Variable_14/AssignAssigntraining/SGD/Variable_14training/SGD/Const_14*
use_locking(*+
_class!
loc:@training/SGD/Variable_14*
validate_shape(*
T0*
_output_shapes
:	�
�
training/SGD/Variable_14/readIdentitytraining/SGD/Variable_14*+
_class!
loc:@training/SGD/Variable_14*
T0*
_output_shapes
:	�
b
training/SGD/Const_15Const*
_output_shapes
:*
dtype0*
valueB*    
�
training/SGD/Variable_15
VariableV2*
	container *
shape:*
shared_name *
_output_shapes
:*
dtype0
�
training/SGD/Variable_15/AssignAssigntraining/SGD/Variable_15training/SGD/Const_15*
use_locking(*+
_class!
loc:@training/SGD/Variable_15*
validate_shape(*
T0*
_output_shapes
:
�
training/SGD/Variable_15/readIdentitytraining/SGD/Variable_15*+
_class!
loc:@training/SGD/Variable_15*
T0*
_output_shapes
:
y
training/SGD/mulMulSGD/momentum/readtraining/SGD/Variable/read*(
_output_shapes
:��*
T0
�
training/SGD/mul_1MulSGD/lr/readItraining/SGD/gradients/block4_conv1/convolution_grad/Conv2DBackpropFilter*(
_output_shapes
:��*
T0
p
training/SGD/subSubtraining/SGD/multraining/SGD/mul_1*(
_output_shapes
:��*
T0
�
training/SGD/AssignAssigntraining/SGD/Variabletraining/SGD/sub*
use_locking(*(
_class
loc:@training/SGD/Variable*
validate_shape(*
T0*(
_output_shapes
:��
v
training/SGD/addAddblock4_conv1/kernel/readtraining/SGD/sub*(
_output_shapes
:��*
T0
�
training/SGD/Assign_1Assignblock4_conv1/kerneltraining/SGD/add*
use_locking(*&
_class
loc:@block4_conv1/kernel*
validate_shape(*
T0*(
_output_shapes
:��
p
training/SGD/mul_2MulSGD/momentum/readtraining/SGD/Variable_1/read*
_output_shapes	
:�*
T0
�
training/SGD/mul_3MulSGD/lr/read<training/SGD/gradients/block4_conv1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
g
training/SGD/sub_1Subtraining/SGD/mul_2training/SGD/mul_3*
_output_shapes	
:�*
T0
�
training/SGD/Assign_2Assigntraining/SGD/Variable_1training/SGD/sub_1*
use_locking(**
_class 
loc:@training/SGD/Variable_1*
validate_shape(*
T0*
_output_shapes	
:�
k
training/SGD/add_1Addblock4_conv1/bias/readtraining/SGD/sub_1*
_output_shapes	
:�*
T0
�
training/SGD/Assign_3Assignblock4_conv1/biastraining/SGD/add_1*
use_locking(*$
_class
loc:@block4_conv1/bias*
validate_shape(*
T0*
_output_shapes	
:�
}
training/SGD/mul_4MulSGD/momentum/readtraining/SGD/Variable_2/read*(
_output_shapes
:��*
T0
�
training/SGD/mul_5MulSGD/lr/readItraining/SGD/gradients/block4_conv2/convolution_grad/Conv2DBackpropFilter*(
_output_shapes
:��*
T0
t
training/SGD/sub_2Subtraining/SGD/mul_4training/SGD/mul_5*(
_output_shapes
:��*
T0
�
training/SGD/Assign_4Assigntraining/SGD/Variable_2training/SGD/sub_2*
use_locking(**
_class 
loc:@training/SGD/Variable_2*
validate_shape(*
T0*(
_output_shapes
:��
z
training/SGD/add_2Addblock4_conv2/kernel/readtraining/SGD/sub_2*(
_output_shapes
:��*
T0
�
training/SGD/Assign_5Assignblock4_conv2/kerneltraining/SGD/add_2*
use_locking(*&
_class
loc:@block4_conv2/kernel*
validate_shape(*
T0*(
_output_shapes
:��
p
training/SGD/mul_6MulSGD/momentum/readtraining/SGD/Variable_3/read*
_output_shapes	
:�*
T0
�
training/SGD/mul_7MulSGD/lr/read<training/SGD/gradients/block4_conv2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
g
training/SGD/sub_3Subtraining/SGD/mul_6training/SGD/mul_7*
_output_shapes	
:�*
T0
�
training/SGD/Assign_6Assigntraining/SGD/Variable_3training/SGD/sub_3*
use_locking(**
_class 
loc:@training/SGD/Variable_3*
validate_shape(*
T0*
_output_shapes	
:�
k
training/SGD/add_3Addblock4_conv2/bias/readtraining/SGD/sub_3*
_output_shapes	
:�*
T0
�
training/SGD/Assign_7Assignblock4_conv2/biastraining/SGD/add_3*
use_locking(*$
_class
loc:@block4_conv2/bias*
validate_shape(*
T0*
_output_shapes	
:�
}
training/SGD/mul_8MulSGD/momentum/readtraining/SGD/Variable_4/read*(
_output_shapes
:��*
T0
�
training/SGD/mul_9MulSGD/lr/readItraining/SGD/gradients/block4_conv3/convolution_grad/Conv2DBackpropFilter*(
_output_shapes
:��*
T0
t
training/SGD/sub_4Subtraining/SGD/mul_8training/SGD/mul_9*(
_output_shapes
:��*
T0
�
training/SGD/Assign_8Assigntraining/SGD/Variable_4training/SGD/sub_4*
use_locking(**
_class 
loc:@training/SGD/Variable_4*
validate_shape(*
T0*(
_output_shapes
:��
z
training/SGD/add_4Addblock4_conv3/kernel/readtraining/SGD/sub_4*(
_output_shapes
:��*
T0
�
training/SGD/Assign_9Assignblock4_conv3/kerneltraining/SGD/add_4*
use_locking(*&
_class
loc:@block4_conv3/kernel*
validate_shape(*
T0*(
_output_shapes
:��
q
training/SGD/mul_10MulSGD/momentum/readtraining/SGD/Variable_5/read*
_output_shapes	
:�*
T0
�
training/SGD/mul_11MulSGD/lr/read<training/SGD/gradients/block4_conv3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
i
training/SGD/sub_5Subtraining/SGD/mul_10training/SGD/mul_11*
_output_shapes	
:�*
T0
�
training/SGD/Assign_10Assigntraining/SGD/Variable_5training/SGD/sub_5*
use_locking(**
_class 
loc:@training/SGD/Variable_5*
validate_shape(*
T0*
_output_shapes	
:�
k
training/SGD/add_5Addblock4_conv3/bias/readtraining/SGD/sub_5*
_output_shapes	
:�*
T0
�
training/SGD/Assign_11Assignblock4_conv3/biastraining/SGD/add_5*
use_locking(*$
_class
loc:@block4_conv3/bias*
validate_shape(*
T0*
_output_shapes	
:�
~
training/SGD/mul_12MulSGD/momentum/readtraining/SGD/Variable_6/read*(
_output_shapes
:��*
T0
�
training/SGD/mul_13MulSGD/lr/readItraining/SGD/gradients/block5_conv1/convolution_grad/Conv2DBackpropFilter*(
_output_shapes
:��*
T0
v
training/SGD/sub_6Subtraining/SGD/mul_12training/SGD/mul_13*(
_output_shapes
:��*
T0
�
training/SGD/Assign_12Assigntraining/SGD/Variable_6training/SGD/sub_6*
use_locking(**
_class 
loc:@training/SGD/Variable_6*
validate_shape(*
T0*(
_output_shapes
:��
z
training/SGD/add_6Addblock5_conv1/kernel/readtraining/SGD/sub_6*(
_output_shapes
:��*
T0
�
training/SGD/Assign_13Assignblock5_conv1/kerneltraining/SGD/add_6*
use_locking(*&
_class
loc:@block5_conv1/kernel*
validate_shape(*
T0*(
_output_shapes
:��
q
training/SGD/mul_14MulSGD/momentum/readtraining/SGD/Variable_7/read*
_output_shapes	
:�*
T0
�
training/SGD/mul_15MulSGD/lr/read<training/SGD/gradients/block5_conv1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
i
training/SGD/sub_7Subtraining/SGD/mul_14training/SGD/mul_15*
_output_shapes	
:�*
T0
�
training/SGD/Assign_14Assigntraining/SGD/Variable_7training/SGD/sub_7*
use_locking(**
_class 
loc:@training/SGD/Variable_7*
validate_shape(*
T0*
_output_shapes	
:�
k
training/SGD/add_7Addblock5_conv1/bias/readtraining/SGD/sub_7*
_output_shapes	
:�*
T0
�
training/SGD/Assign_15Assignblock5_conv1/biastraining/SGD/add_7*
use_locking(*$
_class
loc:@block5_conv1/bias*
validate_shape(*
T0*
_output_shapes	
:�
~
training/SGD/mul_16MulSGD/momentum/readtraining/SGD/Variable_8/read*(
_output_shapes
:��*
T0
�
training/SGD/mul_17MulSGD/lr/readItraining/SGD/gradients/block5_conv2/convolution_grad/Conv2DBackpropFilter*(
_output_shapes
:��*
T0
v
training/SGD/sub_8Subtraining/SGD/mul_16training/SGD/mul_17*(
_output_shapes
:��*
T0
�
training/SGD/Assign_16Assigntraining/SGD/Variable_8training/SGD/sub_8*
use_locking(**
_class 
loc:@training/SGD/Variable_8*
validate_shape(*
T0*(
_output_shapes
:��
z
training/SGD/add_8Addblock5_conv2/kernel/readtraining/SGD/sub_8*(
_output_shapes
:��*
T0
�
training/SGD/Assign_17Assignblock5_conv2/kerneltraining/SGD/add_8*
use_locking(*&
_class
loc:@block5_conv2/kernel*
validate_shape(*
T0*(
_output_shapes
:��
q
training/SGD/mul_18MulSGD/momentum/readtraining/SGD/Variable_9/read*
_output_shapes	
:�*
T0
�
training/SGD/mul_19MulSGD/lr/read<training/SGD/gradients/block5_conv2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
i
training/SGD/sub_9Subtraining/SGD/mul_18training/SGD/mul_19*
_output_shapes	
:�*
T0
�
training/SGD/Assign_18Assigntraining/SGD/Variable_9training/SGD/sub_9*
use_locking(**
_class 
loc:@training/SGD/Variable_9*
validate_shape(*
T0*
_output_shapes	
:�
k
training/SGD/add_9Addblock5_conv2/bias/readtraining/SGD/sub_9*
_output_shapes	
:�*
T0
�
training/SGD/Assign_19Assignblock5_conv2/biastraining/SGD/add_9*
use_locking(*$
_class
loc:@block5_conv2/bias*
validate_shape(*
T0*
_output_shapes	
:�

training/SGD/mul_20MulSGD/momentum/readtraining/SGD/Variable_10/read*(
_output_shapes
:��*
T0
�
training/SGD/mul_21MulSGD/lr/readItraining/SGD/gradients/block5_conv3/convolution_grad/Conv2DBackpropFilter*(
_output_shapes
:��*
T0
w
training/SGD/sub_10Subtraining/SGD/mul_20training/SGD/mul_21*(
_output_shapes
:��*
T0
�
training/SGD/Assign_20Assigntraining/SGD/Variable_10training/SGD/sub_10*
use_locking(*+
_class!
loc:@training/SGD/Variable_10*
validate_shape(*
T0*(
_output_shapes
:��
|
training/SGD/add_10Addblock5_conv3/kernel/readtraining/SGD/sub_10*(
_output_shapes
:��*
T0
�
training/SGD/Assign_21Assignblock5_conv3/kerneltraining/SGD/add_10*
use_locking(*&
_class
loc:@block5_conv3/kernel*
validate_shape(*
T0*(
_output_shapes
:��
r
training/SGD/mul_22MulSGD/momentum/readtraining/SGD/Variable_11/read*
_output_shapes	
:�*
T0
�
training/SGD/mul_23MulSGD/lr/read<training/SGD/gradients/block5_conv3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
j
training/SGD/sub_11Subtraining/SGD/mul_22training/SGD/mul_23*
_output_shapes	
:�*
T0
�
training/SGD/Assign_22Assigntraining/SGD/Variable_11training/SGD/sub_11*
use_locking(*+
_class!
loc:@training/SGD/Variable_11*
validate_shape(*
T0*
_output_shapes	
:�
m
training/SGD/add_11Addblock5_conv3/bias/readtraining/SGD/sub_11*
_output_shapes	
:�*
T0
�
training/SGD/Assign_23Assignblock5_conv3/biastraining/SGD/add_11*
use_locking(*$
_class
loc:@block5_conv3/bias*
validate_shape(*
T0*
_output_shapes	
:�
w
training/SGD/mul_24MulSGD/momentum/readtraining/SGD/Variable_12/read* 
_output_shapes
:
��*
T0
�
training/SGD/mul_25MulSGD/lr/read3training/SGD/gradients/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:
��*
T0
o
training/SGD/sub_12Subtraining/SGD/mul_24training/SGD/mul_25* 
_output_shapes
:
��*
T0
�
training/SGD/Assign_24Assigntraining/SGD/Variable_12training/SGD/sub_12*
use_locking(*+
_class!
loc:@training/SGD/Variable_12*
validate_shape(*
T0* 
_output_shapes
:
��
o
training/SGD/add_12Adddense_1/kernel/readtraining/SGD/sub_12* 
_output_shapes
:
��*
T0
�
training/SGD/Assign_25Assigndense_1/kerneltraining/SGD/add_12*
use_locking(*!
_class
loc:@dense_1/kernel*
validate_shape(*
T0* 
_output_shapes
:
��
r
training/SGD/mul_26MulSGD/momentum/readtraining/SGD/Variable_13/read*
_output_shapes	
:�*
T0
�
training/SGD/mul_27MulSGD/lr/read7training/SGD/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
j
training/SGD/sub_13Subtraining/SGD/mul_26training/SGD/mul_27*
_output_shapes	
:�*
T0
�
training/SGD/Assign_26Assigntraining/SGD/Variable_13training/SGD/sub_13*
use_locking(*+
_class!
loc:@training/SGD/Variable_13*
validate_shape(*
T0*
_output_shapes	
:�
h
training/SGD/add_13Adddense_1/bias/readtraining/SGD/sub_13*
_output_shapes	
:�*
T0
�
training/SGD/Assign_27Assigndense_1/biastraining/SGD/add_13*
use_locking(*
_class
loc:@dense_1/bias*
validate_shape(*
T0*
_output_shapes	
:�
v
training/SGD/mul_28MulSGD/momentum/readtraining/SGD/Variable_14/read*
_output_shapes
:	�*
T0
�
training/SGD/mul_29MulSGD/lr/read3training/SGD/gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes
:	�*
T0
n
training/SGD/sub_14Subtraining/SGD/mul_28training/SGD/mul_29*
_output_shapes
:	�*
T0
�
training/SGD/Assign_28Assigntraining/SGD/Variable_14training/SGD/sub_14*
use_locking(*+
_class!
loc:@training/SGD/Variable_14*
validate_shape(*
T0*
_output_shapes
:	�
n
training/SGD/add_14Adddense_2/kernel/readtraining/SGD/sub_14*
_output_shapes
:	�*
T0
�
training/SGD/Assign_29Assigndense_2/kerneltraining/SGD/add_14*
use_locking(*!
_class
loc:@dense_2/kernel*
validate_shape(*
T0*
_output_shapes
:	�
q
training/SGD/mul_30MulSGD/momentum/readtraining/SGD/Variable_15/read*
_output_shapes
:*
T0
�
training/SGD/mul_31MulSGD/lr/read7training/SGD/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
i
training/SGD/sub_15Subtraining/SGD/mul_30training/SGD/mul_31*
_output_shapes
:*
T0
�
training/SGD/Assign_30Assigntraining/SGD/Variable_15training/SGD/sub_15*
use_locking(*+
_class!
loc:@training/SGD/Variable_15*
validate_shape(*
T0*
_output_shapes
:
g
training/SGD/add_15Adddense_2/bias/readtraining/SGD/sub_15*
_output_shapes
:*
T0
�
training/SGD/Assign_31Assigndense_2/biastraining/SGD/add_15*
use_locking(*
_class
loc:@dense_2/bias*
validate_shape(*
T0*
_output_shapes
:
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
training/SGD/Variable_15:0training/SGD/Variable_15/Assigntraining/SGD/Variable_15/read:02training/SGD/Const_15:0�g�       �	�m����A*

val_acc��?���<       �K"	�p����A*

loss���?;B\&       ���	�r����A*


accDD?�8�       ���	�t����A*

val_loss��?����       `/�#	������A*

val_acc33?L-��       ��-	O�����A*

loss���?ќ�T       ��(	�����A*


acct?�}��       ��2	������A*

val_loss��{?��R�       `/�#	�0���A*

val_accף0?���       ��-	��0���A*

loss�7?�ô       ��(	Ë0���A*


accww7?F��       ��2	�0���A*

val_loss}�&?�߬       `/�#	rYQ���A*

val_accR�>?6�LP       ��-	�[Q���A*

loss<�?���|       ��(	�]Q���A*


acct�@?�>�_       ��2	K_Q���A*

val_loss�v?	el       `/�#	X�����A*

val_acc)\O? '&3       ��-	������A*

loss���>6�g       ��(	�����A*


accQ?�!�       ��2	>�����A*

val_loss�O�>V�6       `/�#	����A*

val_accףP?�e}�       ��-	�����A*

loss֬>r@�       ��(	�����A*


accR�^?hFe4       ��2	�����A*

val_loss��>�J >       `/�#	��M���A*

val_acc)\O?n�       ��-	�M���A*

lossk#�>��-<       ��(	:�M���A*


acc�(\?L�f�       ��2	?�M���A*

val_loss���>��       `/�#	� ����A*

val_acc�(\?Ɉ�A       ��-	}����A*

loss�F�>㛰�       ��(	�����A*


accƒ_?w���       ��2	z����A*

val_loss�|�>t�       `/�#	�J� ���A*

val_acc�QX?
���       ��-	'M� ���A*

loss���>Z��       ��(	
O� ���A*


acc��b?�dD;       ��2	�P� ���A*

val_loss�~�>����       `/�#	ؼ�!���A	*

val_acc�p]?Z=6&       ��-	���!���A	*

loss�W>Ͽ��       ��(	ٿ�!���A	*


acc��j?C��'       ��2	���!���A	*

val_loss�>m}�J       `/�#	x�#���A
*

val_acc\�b?5�ڱ       ��-	z�#���A
*

loss+�>{uc�       ��(	�{�#���A
*


acc""b?�8��       ��2	}�#���A
*

val_loss�܃>@�j�       `/�#	Z�$���A*

val_acc
�c?���Y       ��-	��$���A*

loss�WQ>,ӻ�       ��(	��$���A*


acc7�i?�`L�       ��2	���$���A*

val_loss�#�>�@"O       `/�#	{��%���A*

val_acc\�b?A�J�       ��-	���%���A*

loss��7>���L       ��(	���%���A*


acc��h?�5."       ��2	��%���A*

val_loss��y>̾,�       `/�#	�}'���A*

val_acc�g?|��       ��-	q'���A*

loss�ED>|�{       ��(	��'���A*


acc7�i?�j��       ��2	�'���A*

val_loss��\>���       `/�#	۬#(���A*

val_acc�g?�T!K       ��-	r�#(���A*

loss��#>,�,       ��(	.�#(���A*


accףp?W8��       ��2	�#(���A*

val_lossme>��WT       `/�#	5�Y)���A*

val_acc  `?��e       ��-	��Y)���A*

loss͠>��        ��(	��Y)���A*


accK~q?��Y       ��2	�Y)���A*

val_loss�i>T�       `/�#	�j�*���A*

val_acc�Ga?�%,       ��-	�l�*���A*

loss�?4>��       ��(	No�*���A*


acc�_l?[��[       ��2	}q�*���A*

val_lossÐ�>ø6�       `/�#	��+���A*

val_acc�e?��
�       ��-	(�+���A*

loss�> p�B       ��(	��+���A*


accףp?~��       ��2	&�+���A*

val_loss�yz>�;JH       `/�#	��,���A*

val_acc{n?��
�       ��-	��,���A*

loss��>�=h       ��(	X�,���A*


accc�o?�0?       ��2	|�,���A*

val_losssf>05�       `/�#	XF.���A*

val_acc��h?�0g       ��-	�H.���A*

loss�b�=T#�       ��(	zJ.���A*


acc�Xr?�k�       ��2	L.���A*

val_lossS�c>��~�       `/�#	*=/���A*

val_acc{n?��       ��-	
=/���A*

lossƆ�=>I       ��(	?=/���A*


acc33s?δ�v       ��2	Z=/���A*

val_losstl5>� ��       `/�#	��_0���A*

val_accq=j?^/!�       ��-	��_0���A*

loss�p�=��t       ��(	!�_0���A*


acc�Qx?���       ��2	L�_0���A*

val_loss��I>�2$       `/�#	CA2���A*

val_accq=j?���       ��-	C2���A*

loss{d�=>�+       ��(	-E2���A*


acc��u?�n��       ��2	�F2���A*

val_loss�SA>	�       `/�#	��:3���A*

val_acc{n?��a       ��-	3�:3���A*

loss�>����       ��(	k�:3���A*


acc�Xr?�Ώ�       ��2	�:3���A*

val_lossLYH>�V3�       `/�#	vaq4���A*

val_acc�k?S�       ��-	�dq4���A*

loss!��=?�vb       ��(	gq4���A*


acc�t?)D�       ��2	ciq4���A*

val_loss��T>Iϡ�       `/�#	���5���A*

val_acc
�c?m߆P       ��-	���5���A*

lossо='���       ��(	���5���A*


acc��u?�u��       ��2	�5���A*

val_loss��z>�ъ�       `/�#	���6���A*

val_acc�k?>3�
       ��-	���6���A*

loss&�>2��       ��(	ߌ�6���A*


accc�o?<ayF       ��2	��6���A*

val_loss��L>��r       `/�#	� 8���A*

val_acc{n?�{D       ��-	 8���A*

loss@��=�"�k       ��(	g 8���A*


acc�v?�m�c       ��2	� 8���A*

val_loss��E>ߐ�       `/�#	�@�9���A*

val_accףp?��5�       ��-	dB�9���A*

lossfZ�=��%�       ��(	�C�9���A*


acc�t?A�5       ��2	�D�9���A*

val_lossf�>��5�       `/�#	��:���A*

val_acc)\o?)�K)       ��-	g�:���A*

loss��=���       ��(	�
�:���A*


accH�z?!!e       ��2	��:���A*

val_loss��8>S���       `/�#	���<���A*

val_acc��l?\��       ��-	��<���A*

lossU��=���       ��(	�<���A*


acc�v?�W<0       ��2	8�<���A*

val_loss!jO>����       `/�#	eW>���A*

val_accq=j?���       ��-	xgW>���A*

loss`͚=e�B\       ��(	EiW>���A*


acc`,y?���d       ��2	�jW>���A*

val_loss�b>�0��       `/�#	1Yz?���A *

val_accq=j?��J@       ��-	\z?���A *

loss�6�=!�k^       ��(	-^z?���A *


acc�Qx?8�0N       ��2	)`z?���A *

val_lossm�<>�!.�       `/�#	��@���A!*

val_accףp?�q�       ��-	��@���A!*

loss��=� Y       ��(	���@���A!*


acc33s?6T��       ��2	���@���A!*

val_lossr�)>H,w�       `/�#	���A���A"*

val_acc)\o?P�       ��-	4��A���A"*

loss�N�=�^��       ��(	B��A���A"*


accwww?��@+       ��2	v��A���A"*

val_loss��K>>�e�       `/�#	�S�B���A#*

val_accq=j?Ta'�       ��-		V�B���A#*

loss�٬=�EG\       ��(	�W�B���A#*


acc`,y?�R�S       ��2	FY�B���A#*

val_loss*�W>�P<�       `/�#	X-D���A$*

val_acc33s?�m��       ��-	�-D���A$*

lossaU�=L!E�       ��(	-D���A$*


acc�v?��       ��2	! -D���A$*

val_lossѡ9>[��       `/�#	��VE���A%*

val_acc{n?�ÇC       ��-	��VE���A%*

lossx%�=�jt�       ��(	��VE���A%*


acc`,y?�-�+       ��2	(�VE���A%*

val_lossBU>Q�w�       `/�#	�:G���A&*

val_acc{n?7��       ��-	z<G���A&*

lossFE�=��D�       ��(	9>G���A&*


accH�z?sѵ,       ��2	�?G���A&*

val_loss"�?>?
D�       `/�#	�H���A'*

val_accףp?ns�8       ��-	���H���A'*

loss�)~=��o�       ��(	T��H���A'*


acc��{?8�%       ��2	���H���A'*

val_loss�>�r�       `/�#	j��I���A(*

val_accףp?U�%�       ��-	��I���A(*

loss*g�=/��       ��(	A��I���A(*


accwww?9��       ��2	=��I���A(*

val_loss�V->����       `/�#	�6K���A)*

val_accq=j?��;       ��-	�8K���A)*

loss��=��Mx       ��(	�9K���A)*


acc��u?=��a       ��2	�:K���A)*

val_loss��e>�e��       `/�#	���L���A**

val_acc33s?z�@X       ��-	���L���A**

loss��=�_!       ��(	���L���A**


acc�Qx?��       ��2	���L���A**

val_loss,g,>�5G�       `/�#	���M���A+*

val_accףp?�%Cw       ��-	
��M���A+*

loss;��=n��e       ��(	X��M���A+*


acc��u?s
�       ��2	��M���A+*

val_lossd#
>Q#ݢ       `/�#	�`O���A,*

val_acc�zt?
��       ��-		bO���A,*

loss��=�X�       ��(	cO���A,*


accH�z?�.*       ��2	dO���A,*

val_lossX�/>�= �       `/�#	Z&RP���A-*

val_acc��l?n��A       ��-	�'RP���A-*

loss�|�=��V       ��(	�(RP���A-*


acc`,y?���       ��2	�)RP���A-*

val_loss�1\>u7��       `/�#	��Q���A.*

val_acc{n?⑧�       ��-	B��Q���A.*

loss��M=:�9�       ��(	��Q���A.*


acc�z?02�"       ��2	���Q���A.*

val_loss��?>�:       `/�#	rX�R���A/*

val_acc��q?��'       ��-	IZ�R���A/*

loss�g�=���       ��(	�[�R���A/*


acc`,y?�@�       ��2	�\�R���A/*

val_lossG>{P�       `/�#	p��S���A0*

val_acc)\o?=ec       ��-	2��S���A0*

loss���=�       ��(	e��S���A0*


acc��u?ǋ;       ��2	���S���A0*

val_lossb�%>��|       `/�#	�	U���A1*

val_acc33s?���h       ��-	.�	U���A1*

losszZ�=y=�       ��(	�	U���A1*


acc��{?�j:P       ��2	��	U���A1*

val_loss!X>I~�       `/�#	�N�V���A2*

val_acc�g?�<�       ��-	�Q�V���A2*

loss<pp=��n�       ��(	T�V���A2*


acc0�|?P���       ��2		V�V���A2*

val_lossc.>o���       `/�#	�=iX���A3*

val_acc��l?��'�       ��-	�?iX���A3*

loss~8y=��P       ��(	�AiX���A3*


acc0�|?��Y	       ��2	 CiX���A3*

val_lossB�6>�':#       `/�#	�N�Y���A4*

val_acc�k?A.�"       ��-	)P�Y���A4*

loss���=]f�<       ��(	4Q�Y���A4*


acc��{?[�T       ��2	1R�Y���A4*

val_loss�C)>Ʃ       `/�#	eߵZ���A5*

val_acc�zt?���n       ��-	E�Z���A5*

loss픋=Xi�       ��(	a�Z���A5*


acc`,y?3�w       ��2	]�Z���A5*

val_loss�k�=J+�       `/�#	H�[���A6*

val_acc{n?��)y       ��-	.J�[���A6*

lossS��=t:��       ��(	�L�[���A6*


acc`,y?�|��       ��2	O�[���A6*

val_loss��\>��	       `/�#	�z	]���A7*

val_acc��l?Ù5       ��-	�}	]���A7*

loss�EC=AP�R       ��(	�	]���A7*


acc��{?6J��       ��2	��	]���A7*

val_loss��J>�:K       `/�#	s�^���A8*

val_acc��l?�r=�       ��-	R�^���A8*

lossxX*=O|b       ��(	��^���A8*


acc�p}?�.�       ��2	5�^���A8*

val_loss
�d>�+h       `/�#	*5�_���A9*

val_accףp?�Fre       ��-	�7�_���A9*

lossb\I=sq�]       ��(	�9�_���A9*


acc0�|?���       ��2	�;�_���A9*

val_loss�F>)���       `/�#	�>'a���A:*

val_acc��l?3Ad*       ��-	�@'a���A:*

lossB�T=4�       ��(	�B'a���A:*


acc0�|?�F�1       ��2	�C'a���A:*

val_loss݅->��$�       `/�#	fg�b���A;*

val_acc��l?�+�       ��-	9i�b���A;*

lossl�=�Z}C       ��(	�j�b���A;*


accK~?�Z�       ��2	�k�b���A;*

val_loss��A>OH�       `/�#	~�&d���A<*

val_accףp?0?�       ��-	��&d���A<*

loss4d=���        ��(	r�&d���A<*


accH�z?`�5L       ��2	��&d���A<*

val_loss�$>�n�       `/�#	�|Ve���A=*

val_accףp?ȹR�       ��-	>Ve���A=*

loss��d=�3       ��(	v�Ve���A=*


acc��{?�^��       ��2	��Ve���A=*

val_loss�">	��       `/�#	�g���A>*

val_accףp?_�b�       ��-	�g���A>*

lossܑ=	X�g       ��(	��g���A>*


acc�p}?�� S       ��2	�g���A>*

val_lossXE$>)rc       `/�#	e��h���A?*

val_acc)\o?rq�       ��-	,��h���A?*

lossRX=i��C       ��(	���h���A?*


acc��{?�ޒ1       ��2	���h���A?*

val_lossh:>G�M       `/�#	���i���A@*

val_acc��q?�5       ��-	J��i���A@*

loss�=��PO       ��(	���i���A@*


acc�%?ğk       ��2	���i���A@*

val_lossa�%>*%       `/�#	�/k���AA*

val_acc)\o?9�T       ��-	��/k���AA*

loss?�m= �}       ��(	��/k���AA*


acc�z?�$�       ��2	��/k���AA*

val_loss8�&>�v��       `/�#	�Zfl���AB*

val_acc��q?�Q�       ��-	]fl���AB*

loss��E=�U?�       ��(	�^fl���AB*


acc0�|?       ��2	�`fl���AB*

val_loss^F>��-Q       `/�#	U�n���AC*

val_acc)\o?��       ��-	űn���AC*

loss�h=*��O       ��(	*�n���AC*


accK~?��1�       ��2	ڷn���AC*

val_loss�$>sW��       `/�#	Ô@o���AD*

val_acc��q?(�I�       ��-	��@o���AD*

loss�V=�Ĺq       ��(	��@o���AD*


acc0�|?��a�       ��2	Θ@o���AD*

val_loss7�6>&0�$       `/�#	_ajp���AE*

val_accףp?�@��       ��-	\cjp���AE*

lossN|B=���       ��(	�djp���AE*


accH�z?yzM       ��2	Hfjp���AE*

val_lossFO5>*��V       `/�#	ޚq���AF*

val_acc��q?l)�2       ��-	x��q���AF*

loss�y
='�	�       ��(	��q���AF*


accK~?��b:       ��2	�q���AF*

val_lossK�>���       `/�#	��r���AG*

val_acc��q?J9�(       ��-	{�r���AG*

loss���=m�p       ��(	�
�r���AG*


accH�z?�6H       ��2	��r���AG*

val_loss��>`+�       `/�#	���s���AH*

val_acc)\o?���       ��-	���s���AH*

loss��V=��       ��(	��s���AH*


acc��{?/�}R       ��2	>��s���AH*

val_loss��>�-5�       `/�#	V�u���AI*

val_acc��u?�u       ��-	Y�u���AI*

loss�.=��.�       ��(	][�u���AI*


acc0�|?�DQN       ��2	^�u���AI*

val_loss�_�=i��R       `/�#	���v���AJ*

val_accףp? N"       ��-	���v���AJ*

loss\�=��r%       ��(	���v���AJ*


acc�p}?�_�       ��2	���v���AJ*

val_loss߶G>���