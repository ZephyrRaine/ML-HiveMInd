
C
global_step/initial_valueConst*
value	B : *
dtype0
W
global_step
VariableV2*
	container *
shape: *
dtype0*
shared_name 

global_step/AssignAssignglobal_stepglobal_step/initial_value*
use_locking(*
validate_shape(*
T0*
_class
loc:@global_step
R
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0
/
add/yConst*
value	B :*
dtype0
,
addAddglobal_step/readadd/y*
T0
t
AssignAssignglobal_stepadd*
use_locking(*
validate_shape(*
T0*
_class
loc:@global_step
F
last_reward/initial_valueConst*
valueB
 *    *
dtype0
W
last_reward
VariableV2*
	container *
shape: *
dtype0*
shared_name 

last_reward/AssignAssignlast_rewardlast_reward/initial_value*
use_locking(*
validate_shape(*
T0*
_class
loc:@last_reward
R
last_reward/readIdentitylast_reward*
_class
loc:@last_reward*
T0
3

new_rewardPlaceholder*
shape: *
dtype0
}
Assign_1Assignlast_reward
new_reward*
use_locking(*
validate_shape(*
T0*
_class
loc:@last_reward
O
observation_0Placeholder*$
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0

.conv2d/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@conv2d/kernel*%
valueB"            *
dtype0
{
,conv2d/kernel/Initializer/random_uniform/minConst* 
_class
loc:@conv2d/kernel*
valueB
 *Ü½*
dtype0
{
,conv2d/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@conv2d/kernel*
valueB
 *Ü=*
dtype0
È
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape* 
_class
loc:@conv2d/kernel*

seed *
T0*
seed2 *
dtype0
º
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv2d/kernel*
T0
Ä
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub* 
_class
loc:@conv2d/kernel*
T0
¶
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv2d/kernel*
T0

conv2d/kernel
VariableV2* 
_class
loc:@conv2d/kernel*
	container *
shape:*
dtype0*
shared_name 
«
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0* 
_class
loc:@conv2d/kernel
X
conv2d/kernel/readIdentityconv2d/kernel* 
_class
loc:@conv2d/kernel*
T0
U
conv2d/convolution/ShapeConst*%
valueB"            *
dtype0
U
 conv2d/convolution/dilation_rateConst*
valueB"      *
dtype0
 
conv2d/convolutionConv2Dobservation_0conv2d/kernel/read*
data_formatNHWC*
strides
*
T0*
use_cudnn_on_gpu(*
paddingVALID
.

conv2d/EluEluconv2d/convolution*
T0

0conv2d_1/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_1/kernel*%
valueB"             *
dtype0

.conv2d_1/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *óµ½*
dtype0

.conv2d_1/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *óµ=*
dtype0
Î
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*"
_class
loc:@conv2d_1/kernel*

seed *
T0*
seed2 *
dtype0
Â
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_1/kernel*
T0
Ì
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_1/kernel*
T0
¾
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_1/kernel*
T0

conv2d_1/kernel
VariableV2*"
_class
loc:@conv2d_1/kernel*
	container *
shape: *
dtype0*
shared_name 
³
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*"
_class
loc:@conv2d_1/kernel
^
conv2d_1/kernel/readIdentityconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
T0
W
conv2d_2/convolution/ShapeConst*%
valueB"             *
dtype0
W
"conv2d_2/convolution/dilation_rateConst*
valueB"      *
dtype0
¡
conv2d_2/convolutionConv2D
conv2d/Eluconv2d_1/kernel/read*
data_formatNHWC*
strides
*
T0*
use_cudnn_on_gpu(*
paddingVALID
2
conv2d_2/EluEluconv2d_2/convolution*
T0
=
Flatten/ShapeShapeconv2d_2/Elu*
out_type0*
T0
A
Flatten/Slice/beginConst*
valueB: *
dtype0
@
Flatten/Slice/sizeConst*
valueB:*
dtype0
d
Flatten/SliceSliceFlatten/ShapeFlatten/Slice/beginFlatten/Slice/size*
T0*
Index0
C
Flatten/Slice_1/beginConst*
valueB:*
dtype0
B
Flatten/Slice_1/sizeConst*
valueB:*
dtype0
j
Flatten/Slice_1SliceFlatten/ShapeFlatten/Slice_1/beginFlatten/Slice_1/size*
T0*
Index0
;
Flatten/ConstConst*
valueB: *
dtype0
Z
Flatten/ProdProdFlatten/Slice_1Flatten/Const*
T0*
	keep_dims( *

Tidx0
@
Flatten/ExpandDims/dimConst*
value	B : *
dtype0
[
Flatten/ExpandDims
ExpandDimsFlatten/ProdFlatten/ExpandDims/dim*
T0*

Tdim0
=
Flatten/concat/axisConst*
value	B : *
dtype0
p
Flatten/concatConcatV2Flatten/SliceFlatten/ExpandDimsFlatten/concat/axis*
T0*

Tidx0*
N
O
Flatten/ReshapeReshapeconv2d_2/EluFlatten/concat*
T0*
Tshape0

-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
valueB"    @   *
dtype0
y
+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
valueB
 *  ¾*
dtype0
y
+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
valueB
 *  >*
dtype0
Å
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
_class
loc:@dense/kernel*

seed *
T0*
seed2 *
dtype0
¶
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0
À
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel*
T0
²
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0

dense/kernel
VariableV2*
_class
loc:@dense/kernel*
	container *
shape
: @*
dtype0*
shared_name 
§
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*
_class
loc:@dense/kernel
U
dense/kernel/readIdentitydense/kernel*
_class
loc:@dense/kernel*
T0
i
dense/MatMulMatMulFlatten/Reshapedense/kernel/read*
transpose_b( *
transpose_a( *
T0
'
	dense/EluEludense/MatMul*
T0

/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"@   @   *
dtype0
}
-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
valueB
 *×³]¾*
dtype0
}
-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
valueB
 *×³]>*
dtype0
Ë
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*!
_class
loc:@dense_1/kernel*

seed *
T0*
seed2 *
dtype0
¾
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0
È
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_1/kernel*
T0
º
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0

dense_1/kernel
VariableV2*!
_class
loc:@dense_1/kernel*
	container *
shape
:@@*
dtype0*
shared_name 
¯
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_1/kernel
[
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0
g
dense_2/MatMulMatMul	dense/Eludense_1/kernel/read*
transpose_b( *
transpose_a( *
T0
+
dense_2/EluEludense_2/MatMul*
T0
?
statePlaceholder*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0

/dense_2/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_2/kernel*
valueB"   @   *
dtype0
}
-dense_2/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_2/kernel*
valueB
 *¾*
dtype0
}
-dense_2/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_2/kernel*
valueB
 *>*
dtype0
Ë
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*!
_class
loc:@dense_2/kernel*

seed *
T0*
seed2 *
dtype0
¾
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
T0
È
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_2/kernel*
T0
º
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
T0

dense_2/kernel
VariableV2*!
_class
loc:@dense_2/kernel*
	container *
shape
:@*
dtype0*
shared_name 
¯
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_2/kernel
[
dense_2/kernel/readIdentitydense_2/kernel*!
_class
loc:@dense_2/kernel*
T0
c
dense_3/MatMulMatMulstatedense_2/kernel/read*
transpose_b( *
transpose_a( *
T0
+
dense_3/EluEludense_3/MatMul*
T0

/dense_3/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_3/kernel*
valueB"@   @   *
dtype0
}
-dense_3/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_3/kernel*
valueB
 *×³]¾*
dtype0
}
-dense_3/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_3/kernel*
valueB
 *×³]>*
dtype0
Ë
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*!
_class
loc:@dense_3/kernel*

seed *
T0*
seed2 *
dtype0
¾
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
T0
È
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_3/kernel*
T0
º
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
T0

dense_3/kernel
VariableV2*!
_class
loc:@dense_3/kernel*
	container *
shape
:@@*
dtype0*
shared_name 
¯
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_3/kernel
[
dense_3/kernel/readIdentitydense_3/kernel*!
_class
loc:@dense_3/kernel*
T0
i
dense_4/MatMulMatMuldense_3/Eludense_3/kernel/read*
transpose_b( *
transpose_a( *
T0
+
dense_4/EluEludense_4/MatMul*
T0
5
concat/axisConst*
value	B :*
dtype0
W
concatConcatV2dense_2/Eludense_4/Eluconcat/axis*
T0*

Tidx0*
N
5

batch_sizePlaceholder*
shape:*
dtype0

1dense_4/kernel/Initializer/truncated_normal/shapeConst*!
_class
loc:@dense_4/kernel*
valueB"      *
dtype0

0dense_4/kernel/Initializer/truncated_normal/meanConst*!
_class
loc:@dense_4/kernel*
valueB
 *    *
dtype0

2dense_4/kernel/Initializer/truncated_normal/stddevConst*!
_class
loc:@dense_4/kernel*
valueB
 *s%<*
dtype0
Ó
;dense_4/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_4/kernel/Initializer/truncated_normal/shape*!
_class
loc:@dense_4/kernel*

seed *
T0*
seed2 *
dtype0
Ó
/dense_4/kernel/Initializer/truncated_normal/mulMul;dense_4/kernel/Initializer/truncated_normal/TruncatedNormal2dense_4/kernel/Initializer/truncated_normal/stddev*!
_class
loc:@dense_4/kernel*
T0
Á
+dense_4/kernel/Initializer/truncated_normalAdd/dense_4/kernel/Initializer/truncated_normal/mul0dense_4/kernel/Initializer/truncated_normal/mean*!
_class
loc:@dense_4/kernel*
T0

dense_4/kernel
VariableV2*!
_class
loc:@dense_4/kernel*
	container *
shape:	*
dtype0*
shared_name 
±
dense_4/kernel/AssignAssigndense_4/kernel+dense_4/kernel/Initializer/truncated_normal*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_4/kernel
[
dense_4/kernel/readIdentitydense_4/kernel*!
_class
loc:@dense_4/kernel*
T0
d
dense_5/MatMulMatMulconcatdense_4/kernel/read*
transpose_b( *
transpose_a( *
T0
0
action_probsSoftmaxdense_5/MatMul*
T0
M
#multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0
}
multinomial/MultinomialMultinomialdense_5/MatMul#multinomial/Multinomial/num_samples*

seed *
T0*
seed2 
4
actionIdentitymultinomial/Multinomial*
T0	

1dense_5/kernel/Initializer/truncated_normal/shapeConst*!
_class
loc:@dense_5/kernel*
valueB"      *
dtype0

0dense_5/kernel/Initializer/truncated_normal/meanConst*!
_class
loc:@dense_5/kernel*
valueB
 *    *
dtype0

2dense_5/kernel/Initializer/truncated_normal/stddevConst*!
_class
loc:@dense_5/kernel*
valueB
 *ÐdÎ=*
dtype0
Ó
;dense_5/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_5/kernel/Initializer/truncated_normal/shape*!
_class
loc:@dense_5/kernel*

seed *
T0*
seed2 *
dtype0
Ó
/dense_5/kernel/Initializer/truncated_normal/mulMul;dense_5/kernel/Initializer/truncated_normal/TruncatedNormal2dense_5/kernel/Initializer/truncated_normal/stddev*!
_class
loc:@dense_5/kernel*
T0
Á
+dense_5/kernel/Initializer/truncated_normalAdd/dense_5/kernel/Initializer/truncated_normal/mul0dense_5/kernel/Initializer/truncated_normal/mean*!
_class
loc:@dense_5/kernel*
T0

dense_5/kernel
VariableV2*!
_class
loc:@dense_5/kernel*
	container *
shape:	*
dtype0*
shared_name 
±
dense_5/kernel/AssignAssigndense_5/kernel+dense_5/kernel/Initializer/truncated_normal*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_5/kernel
[
dense_5/kernel/readIdentitydense_5/kernel*!
_class
loc:@dense_5/kernel*
T0
d
dense_6/MatMulMatMulconcatdense_5/kernel/read*
transpose_b( *
transpose_a( *
T0
3
value_estimateIdentitydense_6/MatMul*
T0
4
add_1/yConst*
valueB
 *ÿæÛ.*
dtype0
,
add_1Addaction_probsadd_1/y*
T0

LogLogadd_1*
T0
&
mulMulaction_probsLog*
T0
?
Sum/reduction_indicesConst*
value	B :*
dtype0
L
SumSummulSum/reduction_indices*
T0*
	keep_dims( *

Tidx0

NegNegSum*
T0
A
PlaceholderPlaceholder*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0
C
OneHotEncoding/ToInt64CastPlaceholder*

DstT0	*

SrcT0
I
OneHotEncoding/one_hot/ConstConst*
valueB
 *  ?*
dtype0
K
OneHotEncoding/one_hot/Const_1Const*
valueB
 *    *
dtype0
F
OneHotEncoding/one_hot/depthConst*
value	B :*
dtype0
L
OneHotEncoding/one_hot/on_valueConst*
valueB
 *  ?*
dtype0
M
 OneHotEncoding/one_hot/off_valueConst*
valueB
 *    *
dtype0
Á
OneHotEncoding/one_hotOneHotOneHotEncoding/ToInt64OneHotEncoding/one_hot/depthOneHotEncoding/one_hot/on_value OneHotEncoding/one_hot/off_value*
axisÿÿÿÿÿÿÿÿÿ*
TI0	*
T0
K
old_probabilitiesPlaceholder*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0
;
mul_1Mulaction_probsOneHotEncoding/one_hot*
T0
A
Sum_1/reduction_indicesConst*
value	B :*
dtype0
R
Sum_1Summul_1Sum_1/reduction_indices*
T0*
	keep_dims( *

Tidx0
@
mul_2Mulold_probabilitiesOneHotEncoding/one_hot*
T0
A
Sum_2/reduction_indicesConst*
value	B :*
dtype0
R
Sum_2Summul_2Sum_2/reduction_indices*
T0*
	keep_dims( *

Tidx0
H
discounted_rewardsPlaceholder*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0
D

advantagesPlaceholder*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0
J
PolynomialDecay/learning_rateConst*
valueB
 *ÍÌL>*
dtype0
F
PolynomialDecay/CastCastglobal_step/read*

DstT0*

SrcT0
E
PolynomialDecay/Cast_1/xConst*
valueB
 * $ôH*
dtype0
E
PolynomialDecay/Cast_2/xConst*
valueB
 *ÍÌÌ=*
dtype0
E
PolynomialDecay/Cast_3/xConst*
valueB
 *  ?*
dtype0
[
PolynomialDecay/MinimumMinimumPolynomialDecay/CastPolynomialDecay/Cast_1/x*
T0
Z
PolynomialDecay/divRealDivPolynomialDecay/MinimumPolynomialDecay/Cast_1/x*
T0
\
PolynomialDecay/subSubPolynomialDecay/learning_ratePolynomialDecay/Cast_2/x*
T0
D
PolynomialDecay/sub_1/xConst*
valueB
 *  ?*
dtype0
S
PolynomialDecay/sub_1SubPolynomialDecay/sub_1/xPolynomialDecay/div*
T0
T
PolynomialDecay/PowPowPolynomialDecay/sub_1PolynomialDecay/Cast_3/x*
T0
M
PolynomialDecay/MulMulPolynomialDecay/subPolynomialDecay/Pow*
T0
N
PolynomialDecayAddPolynomialDecay/MulPolynomialDecay/Cast_2/x*
T0
4
add_2/yConst*
valueB
 *ÿæÛ.*
dtype0
%
add_2AddSum_2add_2/y*
T0
)
truedivRealDivSum_1add_2*
T0
*
mul_3Multruediv
advantages*
T0
2
sub/xConst*
valueB
 *  ?*
dtype0
+
subSubsub/xPolynomialDecay*
T0
4
add_3/xConst*
valueB
 *  ?*
dtype0
/
add_3Addadd_3/xPolynomialDecay*
T0
9
clip_by_value/MinimumMinimumtruedivadd_3*
T0
=
clip_by_valueMaximumclip_by_value/Minimumsub*
T0
0
mul_4Mulclip_by_value
advantages*
T0
)
MinimumMinimummul_3mul_4*
T0
:
ConstConst*
valueB"       *
dtype0
B
MeanMeanMinimumConst*
T0*
	keep_dims( *

Tidx0

Neg_1NegMean*
T0
A
Sum_3/reduction_indicesConst*
value	B :*
dtype0
[
Sum_3Sumvalue_estimateSum_3/reduction_indices*
T0*
	keep_dims( *

Tidx0
J
SquaredDifferenceSquaredDifferencediscounted_rewardsSum_3*
T0
5
Const_1Const*
valueB: *
dtype0
P
Mean_1MeanSquaredDifferenceConst_1*
T0*
	keep_dims( *

Tidx0
L
PolynomialDecay_1/learning_rateConst*
valueB
 *o:*
dtype0
H
PolynomialDecay_1/CastCastglobal_step/read*

DstT0*

SrcT0
G
PolynomialDecay_1/Cast_1/xConst*
valueB
 * $ôH*
dtype0
G
PolynomialDecay_1/Cast_2/xConst*
valueB
 *¬Å'7*
dtype0
G
PolynomialDecay_1/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_1/MinimumMinimumPolynomialDecay_1/CastPolynomialDecay_1/Cast_1/x*
T0
`
PolynomialDecay_1/divRealDivPolynomialDecay_1/MinimumPolynomialDecay_1/Cast_1/x*
T0
b
PolynomialDecay_1/subSubPolynomialDecay_1/learning_ratePolynomialDecay_1/Cast_2/x*
T0
F
PolynomialDecay_1/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_1/sub_1SubPolynomialDecay_1/sub_1/xPolynomialDecay_1/div*
T0
Z
PolynomialDecay_1/PowPowPolynomialDecay_1/sub_1PolynomialDecay_1/Cast_3/x*
T0
S
PolynomialDecay_1/MulMulPolynomialDecay_1/subPolynomialDecay_1/Pow*
T0
T
PolynomialDecay_1AddPolynomialDecay_1/MulPolynomialDecay_1/Cast_2/x*
T0
4
mul_5/xConst*
valueB
 *   ?*
dtype0
&
mul_5Mulmul_5/xMean_1*
T0
#
add_4AddNeg_1mul_5*
T0
5
Const_2Const*
valueB: *
dtype0
B
Mean_2MeanNegConst_2*
T0*
	keep_dims( *

Tidx0
0
mul_6MulPolynomialDecay_1Mean_2*
T0
#
sub_1Subadd_4mul_6*
T0
L
PolynomialDecay_2/learning_rateConst*
valueB
 *RI9*
dtype0
H
PolynomialDecay_2/CastCastglobal_step/read*

DstT0*

SrcT0
G
PolynomialDecay_2/Cast_1/xConst*
valueB
 * $ôH*
dtype0
G
PolynomialDecay_2/Cast_2/xConst*
valueB
 *ÿæÛ.*
dtype0
G
PolynomialDecay_2/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_2/MinimumMinimumPolynomialDecay_2/CastPolynomialDecay_2/Cast_1/x*
T0
`
PolynomialDecay_2/divRealDivPolynomialDecay_2/MinimumPolynomialDecay_2/Cast_1/x*
T0
b
PolynomialDecay_2/subSubPolynomialDecay_2/learning_ratePolynomialDecay_2/Cast_2/x*
T0
F
PolynomialDecay_2/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_2/sub_1SubPolynomialDecay_2/sub_1/xPolynomialDecay_2/div*
T0
Z
PolynomialDecay_2/PowPowPolynomialDecay_2/sub_1PolynomialDecay_2/Cast_3/x*
T0
S
PolynomialDecay_2/MulMulPolynomialDecay_2/subPolynomialDecay_2/Pow*
T0
T
PolynomialDecay_2AddPolynomialDecay_2/MulPolynomialDecay_2/Cast_2/x*
T0
8
gradients/ShapeConst*
valueB *
dtype0
<
gradients/ConstConst*
valueB
 *  ?*
dtype0
A
gradients/FillFillgradients/Shapegradients/Const*
T0
C
gradients/sub_1_grad/ShapeConst*
valueB *
dtype0
E
gradients/sub_1_grad/Shape_1Const*
valueB *
dtype0

*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0

gradients/sub_1_grad/SumSumgradients/Fill*gradients/sub_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0*
Tshape0

gradients/sub_1_grad/Sum_1Sumgradients/Fill,gradients/sub_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
D
gradients/sub_1_grad/NegNeggradients/sub_1_grad/Sum_1*
T0
x
gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Neggradients/sub_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
¹
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_1_grad/Reshape*
T0
¿
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1*
T0
C
gradients/add_4_grad/ShapeConst*
valueB *
dtype0
E
gradients/add_4_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*
T0
 
gradients/add_4_grad/SumSum-gradients/sub_1_grad/tuple/control_dependency*gradients/add_4_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
T0*
Tshape0
¤
gradients/add_4_grad/Sum_1Sum-gradients/sub_1_grad/tuple/control_dependency,gradients/add_4_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
z
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
¹
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_4_grad/Reshape*
T0
¿
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1*
T0
C
gradients/mul_6_grad/ShapeConst*
valueB *
dtype0
E
gradients/mul_6_grad/Shape_1Const*
valueB *
dtype0

*gradients/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_6_grad/Shapegradients/mul_6_grad/Shape_1*
T0
a
gradients/mul_6_grad/mulMul/gradients/sub_1_grad/tuple/control_dependency_1Mean_2*
T0

gradients/mul_6_grad/SumSumgradients/mul_6_grad/mul*gradients/mul_6_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/mul_6_grad/ReshapeReshapegradients/mul_6_grad/Sumgradients/mul_6_grad/Shape*
T0*
Tshape0
n
gradients/mul_6_grad/mul_1MulPolynomialDecay_1/gradients/sub_1_grad/tuple/control_dependency_1*
T0

gradients/mul_6_grad/Sum_1Sumgradients/mul_6_grad/mul_1,gradients/mul_6_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
z
gradients/mul_6_grad/Reshape_1Reshapegradients/mul_6_grad/Sum_1gradients/mul_6_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_6_grad/tuple/group_depsNoOp^gradients/mul_6_grad/Reshape^gradients/mul_6_grad/Reshape_1
¹
-gradients/mul_6_grad/tuple/control_dependencyIdentitygradients/mul_6_grad/Reshape&^gradients/mul_6_grad/tuple/group_deps*/
_class%
#!loc:@gradients/mul_6_grad/Reshape*
T0
¿
/gradients/mul_6_grad/tuple/control_dependency_1Identitygradients/mul_6_grad/Reshape_1&^gradients/mul_6_grad/tuple/group_deps*1
_class'
%#loc:@gradients/mul_6_grad/Reshape_1*
T0
W
gradients/Neg_1_grad/NegNeg-gradients/add_4_grad/tuple/control_dependency*
T0
C
gradients/mul_5_grad/ShapeConst*
valueB *
dtype0
E
gradients/mul_5_grad/Shape_1Const*
valueB *
dtype0

*gradients/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_5_grad/Shapegradients/mul_5_grad/Shape_1*
T0
a
gradients/mul_5_grad/mulMul/gradients/add_4_grad/tuple/control_dependency_1Mean_1*
T0

gradients/mul_5_grad/SumSumgradients/mul_5_grad/mul*gradients/mul_5_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/mul_5_grad/ReshapeReshapegradients/mul_5_grad/Sumgradients/mul_5_grad/Shape*
T0*
Tshape0
d
gradients/mul_5_grad/mul_1Mulmul_5/x/gradients/add_4_grad/tuple/control_dependency_1*
T0

gradients/mul_5_grad/Sum_1Sumgradients/mul_5_grad/mul_1,gradients/mul_5_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
z
gradients/mul_5_grad/Reshape_1Reshapegradients/mul_5_grad/Sum_1gradients/mul_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_5_grad/tuple/group_depsNoOp^gradients/mul_5_grad/Reshape^gradients/mul_5_grad/Reshape_1
¹
-gradients/mul_5_grad/tuple/control_dependencyIdentitygradients/mul_5_grad/Reshape&^gradients/mul_5_grad/tuple/group_deps*/
_class%
#!loc:@gradients/mul_5_grad/Reshape*
T0
¿
/gradients/mul_5_grad/tuple/control_dependency_1Identitygradients/mul_5_grad/Reshape_1&^gradients/mul_5_grad/tuple/group_deps*1
_class'
%#loc:@gradients/mul_5_grad/Reshape_1*
T0
Q
#gradients/Mean_2_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_2_grad/ReshapeReshape/gradients/mul_6_grad/tuple/control_dependency_1#gradients/Mean_2_grad/Reshape/shape*
T0*
Tshape0
B
gradients/Mean_2_grad/ShapeShapeNeg*
out_type0*
T0
y
gradients/Mean_2_grad/TileTilegradients/Mean_2_grad/Reshapegradients/Mean_2_grad/Shape*

Tmultiples0*
T0
D
gradients/Mean_2_grad/Shape_1ShapeNeg*
out_type0*
T0
F
gradients/Mean_2_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_2_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_2_grad/ProdProdgradients/Mean_2_grad/Shape_1gradients/Mean_2_grad/Const*
T0*
	keep_dims( *

Tidx0
K
gradients/Mean_2_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_2_grad/Prod_1Prodgradients/Mean_2_grad/Shape_2gradients/Mean_2_grad/Const_1*
T0*
	keep_dims( *

Tidx0
I
gradients/Mean_2_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_2_grad/MaximumMaximumgradients/Mean_2_grad/Prod_1gradients/Mean_2_grad/Maximum/y*
T0
n
gradients/Mean_2_grad/floordivFloorDivgradients/Mean_2_grad/Prodgradients/Mean_2_grad/Maximum*
T0
Z
gradients/Mean_2_grad/CastCastgradients/Mean_2_grad/floordiv*

DstT0*

SrcT0
i
gradients/Mean_2_grad/truedivRealDivgradients/Mean_2_grad/Tilegradients/Mean_2_grad/Cast*
T0
V
!gradients/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0
z
gradients/Mean_grad/ReshapeReshapegradients/Neg_1_grad/Neg!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0
D
gradients/Mean_grad/ShapeShapeMinimum*
out_type0*
T0
s
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0
F
gradients/Mean_grad/Shape_1ShapeMinimum*
out_type0*
T0
D
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0
G
gradients/Mean_grad/ConstConst*
valueB: *
dtype0
~
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*
	keep_dims( *

Tidx0
I
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*
	keep_dims( *

Tidx0
G
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0
j
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0
h
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0
V
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*

SrcT0
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0
Q
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_1_grad/ReshapeReshape/gradients/mul_5_grad/tuple/control_dependency_1#gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0
P
gradients/Mean_1_grad/ShapeShapeSquaredDifference*
out_type0*
T0
y
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*

Tmultiples0*
T0
R
gradients/Mean_1_grad/Shape_1ShapeSquaredDifference*
out_type0*
T0
F
gradients/Mean_1_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_1_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*
T0*
	keep_dims( *

Tidx0
K
gradients/Mean_1_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*
T0*
	keep_dims( *

Tidx0
I
gradients/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
T0
n
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0
Z
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

DstT0*

SrcT0
i
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0
E
gradients/Neg_grad/NegNeggradients/Mean_2_grad/truediv*
T0
E
gradients/Minimum_grad/ShapeShapemul_3*
out_type0*
T0
G
gradients/Minimum_grad/Shape_1Shapemul_4*
out_type0*
T0
]
gradients/Minimum_grad/Shape_2Shapegradients/Mean_grad/truediv*
out_type0*
T0
O
"gradients/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
q
gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*
T0
D
 gradients/Minimum_grad/LessEqual	LessEqualmul_3mul_4*
T0

,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*
T0

gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqualgradients/Mean_grad/truedivgradients/Minimum_grad/zeros*
T0
Q
!gradients/Minimum_grad/LogicalNot
LogicalNot gradients/Minimum_grad/LessEqual

gradients/Minimum_grad/Select_1Select!gradients/Minimum_grad/LogicalNotgradients/Mean_grad/truedivgradients/Minimum_grad/zeros*
T0

gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
z
gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*
T0*
Tshape0

gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
Á
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*1
_class'
%#loc:@gradients/Minimum_grad/Reshape*
T0
Ç
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1*
T0
\
&gradients/SquaredDifference_grad/ShapeShapediscounted_rewards*
out_type0*
T0
Q
(gradients/SquaredDifference_grad/Shape_1ShapeSum_3*
out_type0*
T0
ª
6gradients/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/SquaredDifference_grad/Shape(gradients/SquaredDifference_grad/Shape_1*
T0
t
'gradients/SquaredDifference_grad/scalarConst^gradients/Mean_1_grad/truediv*
valueB
 *   @*
dtype0
|
$gradients/SquaredDifference_grad/mulMul'gradients/SquaredDifference_grad/scalargradients/Mean_1_grad/truediv*
T0
o
$gradients/SquaredDifference_grad/subSubdiscounted_rewardsSum_3^gradients/Mean_1_grad/truediv*
T0

&gradients/SquaredDifference_grad/mul_1Mul$gradients/SquaredDifference_grad/mul$gradients/SquaredDifference_grad/sub*
T0
±
$gradients/SquaredDifference_grad/SumSum&gradients/SquaredDifference_grad/mul_16gradients/SquaredDifference_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0

(gradients/SquaredDifference_grad/ReshapeReshape$gradients/SquaredDifference_grad/Sum&gradients/SquaredDifference_grad/Shape*
T0*
Tshape0
µ
&gradients/SquaredDifference_grad/Sum_1Sum&gradients/SquaredDifference_grad/mul_18gradients/SquaredDifference_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

*gradients/SquaredDifference_grad/Reshape_1Reshape&gradients/SquaredDifference_grad/Sum_1(gradients/SquaredDifference_grad/Shape_1*
T0*
Tshape0
`
$gradients/SquaredDifference_grad/NegNeg*gradients/SquaredDifference_grad/Reshape_1*
T0

1gradients/SquaredDifference_grad/tuple/group_depsNoOp)^gradients/SquaredDifference_grad/Reshape%^gradients/SquaredDifference_grad/Neg
é
9gradients/SquaredDifference_grad/tuple/control_dependencyIdentity(gradients/SquaredDifference_grad/Reshape2^gradients/SquaredDifference_grad/tuple/group_deps*;
_class1
/-loc:@gradients/SquaredDifference_grad/Reshape*
T0
ã
;gradients/SquaredDifference_grad/tuple/control_dependency_1Identity$gradients/SquaredDifference_grad/Neg2^gradients/SquaredDifference_grad/tuple/group_deps*7
_class-
+)loc:@gradients/SquaredDifference_grad/Neg*
T0
?
gradients/Sum_grad/ShapeShapemul*
out_type0*
T0
A
gradients/Sum_grad/SizeConst*
value	B :*
dtype0
V
gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*
T0
\
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0
C
gradients/Sum_grad/Shape_1Const*
valueB *
dtype0
H
gradients/Sum_grad/range/startConst*
value	B : *
dtype0
H
gradients/Sum_grad/range/deltaConst*
value	B :*
dtype0

gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*

Tidx0
G
gradients/Sum_grad/Fill/valueConst*
value	B :*
dtype0
c
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0
¨
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
T0*
N
F
gradients/Sum_grad/Maximum/yConst*
value	B :*
dtype0
n
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0
f
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0
v
gradients/Sum_grad/ReshapeReshapegradients/Neg_grad/Neg gradients/Sum_grad/DynamicStitch*
T0*
Tshape0
s
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*

Tmultiples0*
T0
E
gradients/mul_3_grad/ShapeShapetruediv*
out_type0*
T0
J
gradients/mul_3_grad/Shape_1Shape
advantages*
out_type0*
T0

*gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_3_grad/Shapegradients/mul_3_grad/Shape_1*
T0
e
gradients/mul_3_grad/mulMul/gradients/Minimum_grad/tuple/control_dependency
advantages*
T0

gradients/mul_3_grad/SumSumgradients/mul_3_grad/mul*gradients/mul_3_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/mul_3_grad/ReshapeReshapegradients/mul_3_grad/Sumgradients/mul_3_grad/Shape*
T0*
Tshape0
d
gradients/mul_3_grad/mul_1Multruediv/gradients/Minimum_grad/tuple/control_dependency*
T0

gradients/mul_3_grad/Sum_1Sumgradients/mul_3_grad/mul_1,gradients/mul_3_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
z
gradients/mul_3_grad/Reshape_1Reshapegradients/mul_3_grad/Sum_1gradients/mul_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_3_grad/tuple/group_depsNoOp^gradients/mul_3_grad/Reshape^gradients/mul_3_grad/Reshape_1
¹
-gradients/mul_3_grad/tuple/control_dependencyIdentitygradients/mul_3_grad/Reshape&^gradients/mul_3_grad/tuple/group_deps*/
_class%
#!loc:@gradients/mul_3_grad/Reshape*
T0
¿
/gradients/mul_3_grad/tuple/control_dependency_1Identitygradients/mul_3_grad/Reshape_1&^gradients/mul_3_grad/tuple/group_deps*1
_class'
%#loc:@gradients/mul_3_grad/Reshape_1*
T0
K
gradients/mul_4_grad/ShapeShapeclip_by_value*
out_type0*
T0
J
gradients/mul_4_grad/Shape_1Shape
advantages*
out_type0*
T0

*gradients/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_4_grad/Shapegradients/mul_4_grad/Shape_1*
T0
g
gradients/mul_4_grad/mulMul1gradients/Minimum_grad/tuple/control_dependency_1
advantages*
T0

gradients/mul_4_grad/SumSumgradients/mul_4_grad/mul*gradients/mul_4_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/mul_4_grad/ReshapeReshapegradients/mul_4_grad/Sumgradients/mul_4_grad/Shape*
T0*
Tshape0
l
gradients/mul_4_grad/mul_1Mulclip_by_value1gradients/Minimum_grad/tuple/control_dependency_1*
T0

gradients/mul_4_grad/Sum_1Sumgradients/mul_4_grad/mul_1,gradients/mul_4_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
z
gradients/mul_4_grad/Reshape_1Reshapegradients/mul_4_grad/Sum_1gradients/mul_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_4_grad/tuple/group_depsNoOp^gradients/mul_4_grad/Reshape^gradients/mul_4_grad/Reshape_1
¹
-gradients/mul_4_grad/tuple/control_dependencyIdentitygradients/mul_4_grad/Reshape&^gradients/mul_4_grad/tuple/group_deps*/
_class%
#!loc:@gradients/mul_4_grad/Reshape*
T0
¿
/gradients/mul_4_grad/tuple/control_dependency_1Identitygradients/mul_4_grad/Reshape_1&^gradients/mul_4_grad/tuple/group_deps*1
_class'
%#loc:@gradients/mul_4_grad/Reshape_1*
T0
L
gradients/Sum_3_grad/ShapeShapevalue_estimate*
out_type0*
T0
C
gradients/Sum_3_grad/SizeConst*
value	B :*
dtype0
\
gradients/Sum_3_grad/addAddSum_3/reduction_indicesgradients/Sum_3_grad/Size*
T0
b
gradients/Sum_3_grad/modFloorModgradients/Sum_3_grad/addgradients/Sum_3_grad/Size*
T0
E
gradients/Sum_3_grad/Shape_1Const*
valueB *
dtype0
J
 gradients/Sum_3_grad/range/startConst*
value	B : *
dtype0
J
 gradients/Sum_3_grad/range/deltaConst*
value	B :*
dtype0

gradients/Sum_3_grad/rangeRange gradients/Sum_3_grad/range/startgradients/Sum_3_grad/Size gradients/Sum_3_grad/range/delta*

Tidx0
I
gradients/Sum_3_grad/Fill/valueConst*
value	B :*
dtype0
i
gradients/Sum_3_grad/FillFillgradients/Sum_3_grad/Shape_1gradients/Sum_3_grad/Fill/value*
T0
²
"gradients/Sum_3_grad/DynamicStitchDynamicStitchgradients/Sum_3_grad/rangegradients/Sum_3_grad/modgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Fill*
T0*
N
H
gradients/Sum_3_grad/Maximum/yConst*
value	B :*
dtype0
t
gradients/Sum_3_grad/MaximumMaximum"gradients/Sum_3_grad/DynamicStitchgradients/Sum_3_grad/Maximum/y*
T0
l
gradients/Sum_3_grad/floordivFloorDivgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Maximum*
T0

gradients/Sum_3_grad/ReshapeReshape;gradients/SquaredDifference_grad/tuple/control_dependency_1"gradients/Sum_3_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_3_grad/TileTilegradients/Sum_3_grad/Reshapegradients/Sum_3_grad/floordiv*

Tmultiples0*
T0
H
gradients/mul_grad/ShapeShapeaction_probs*
out_type0*
T0
A
gradients/mul_grad/Shape_1ShapeLog*
out_type0*
T0

(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0
D
gradients/mul_grad/mulMulgradients/Sum_grad/TileLog*
T0

gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
n
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0
O
gradients/mul_grad/mul_1Mulaction_probsgradients/Sum_grad/Tile*
T0

gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
t
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
±
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*-
_class#
!loc:@gradients/mul_grad/Reshape*
T0
·
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*
T0
[
"gradients/clip_by_value_grad/ShapeShapeclip_by_value/Minimum*
out_type0*
T0
M
$gradients/clip_by_value_grad/Shape_1Const*
valueB *
dtype0
u
$gradients/clip_by_value_grad/Shape_2Shape-gradients/mul_4_grad/tuple/control_dependency*
out_type0*
T0
U
(gradients/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0

"gradients/clip_by_value_grad/zerosFill$gradients/clip_by_value_grad/Shape_2(gradients/clip_by_value_grad/zeros/Const*
T0
^
)gradients/clip_by_value_grad/GreaterEqualGreaterEqualclip_by_value/Minimumsub*
T0

2gradients/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/clip_by_value_grad/Shape$gradients/clip_by_value_grad/Shape_1*
T0
´
#gradients/clip_by_value_grad/SelectSelect)gradients/clip_by_value_grad/GreaterEqual-gradients/mul_4_grad/tuple/control_dependency"gradients/clip_by_value_grad/zeros*
T0
`
'gradients/clip_by_value_grad/LogicalNot
LogicalNot)gradients/clip_by_value_grad/GreaterEqual
´
%gradients/clip_by_value_grad/Select_1Select'gradients/clip_by_value_grad/LogicalNot-gradients/mul_4_grad/tuple/control_dependency"gradients/clip_by_value_grad/zeros*
T0
¦
 gradients/clip_by_value_grad/SumSum#gradients/clip_by_value_grad/Select2gradients/clip_by_value_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0

$gradients/clip_by_value_grad/ReshapeReshape gradients/clip_by_value_grad/Sum"gradients/clip_by_value_grad/Shape*
T0*
Tshape0
¬
"gradients/clip_by_value_grad/Sum_1Sum%gradients/clip_by_value_grad/Select_14gradients/clip_by_value_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

&gradients/clip_by_value_grad/Reshape_1Reshape"gradients/clip_by_value_grad/Sum_1$gradients/clip_by_value_grad/Shape_1*
T0*
Tshape0

-gradients/clip_by_value_grad/tuple/group_depsNoOp%^gradients/clip_by_value_grad/Reshape'^gradients/clip_by_value_grad/Reshape_1
Ù
5gradients/clip_by_value_grad/tuple/control_dependencyIdentity$gradients/clip_by_value_grad/Reshape.^gradients/clip_by_value_grad/tuple/group_deps*7
_class-
+)loc:@gradients/clip_by_value_grad/Reshape*
T0
ß
7gradients/clip_by_value_grad/tuple/control_dependency_1Identity&gradients/clip_by_value_grad/Reshape_1.^gradients/clip_by_value_grad/tuple/group_deps*9
_class/
-+loc:@gradients/clip_by_value_grad/Reshape_1*
T0
k
gradients/Log_grad/Reciprocal
Reciprocaladd_1.^gradients/mul_grad/tuple/control_dependency_1*
T0
t
gradients/Log_grad/mulMul-gradients/mul_grad/tuple/control_dependency_1gradients/Log_grad/Reciprocal*
T0
U
*gradients/clip_by_value/Minimum_grad/ShapeShapetruediv*
out_type0*
T0
U
,gradients/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0

,gradients/clip_by_value/Minimum_grad/Shape_2Shape5gradients/clip_by_value_grad/tuple/control_dependency*
out_type0*
T0
]
0gradients/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

*gradients/clip_by_value/Minimum_grad/zerosFill,gradients/clip_by_value/Minimum_grad/Shape_20gradients/clip_by_value/Minimum_grad/zeros/Const*
T0
T
.gradients/clip_by_value/Minimum_grad/LessEqual	LessEqualtruedivadd_3*
T0
¶
:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/clip_by_value/Minimum_grad/Shape,gradients/clip_by_value/Minimum_grad/Shape_1*
T0
Ñ
+gradients/clip_by_value/Minimum_grad/SelectSelect.gradients/clip_by_value/Minimum_grad/LessEqual5gradients/clip_by_value_grad/tuple/control_dependency*gradients/clip_by_value/Minimum_grad/zeros*
T0
m
/gradients/clip_by_value/Minimum_grad/LogicalNot
LogicalNot.gradients/clip_by_value/Minimum_grad/LessEqual
Ô
-gradients/clip_by_value/Minimum_grad/Select_1Select/gradients/clip_by_value/Minimum_grad/LogicalNot5gradients/clip_by_value_grad/tuple/control_dependency*gradients/clip_by_value/Minimum_grad/zeros*
T0
¾
(gradients/clip_by_value/Minimum_grad/SumSum+gradients/clip_by_value/Minimum_grad/Select:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
¤
,gradients/clip_by_value/Minimum_grad/ReshapeReshape(gradients/clip_by_value/Minimum_grad/Sum*gradients/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0
Ä
*gradients/clip_by_value/Minimum_grad/Sum_1Sum-gradients/clip_by_value/Minimum_grad/Select_1<gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
ª
.gradients/clip_by_value/Minimum_grad/Reshape_1Reshape*gradients/clip_by_value/Minimum_grad/Sum_1,gradients/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0

5gradients/clip_by_value/Minimum_grad/tuple/group_depsNoOp-^gradients/clip_by_value/Minimum_grad/Reshape/^gradients/clip_by_value/Minimum_grad/Reshape_1
ù
=gradients/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity,gradients/clip_by_value/Minimum_grad/Reshape6^gradients/clip_by_value/Minimum_grad/tuple/group_deps*?
_class5
31loc:@gradients/clip_by_value/Minimum_grad/Reshape*
T0
ÿ
?gradients/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity.gradients/clip_by_value/Minimum_grad/Reshape_16^gradients/clip_by_value/Minimum_grad/tuple/group_deps*A
_class7
53loc:@gradients/clip_by_value/Minimum_grad/Reshape_1*
T0

$gradients/dense_6/MatMul_grad/MatMulMatMulgradients/Sum_3_grad/Tiledense_5/kernel/read*
transpose_b(*
transpose_a( *
T0

&gradients/dense_6/MatMul_grad/MatMul_1MatMulconcatgradients/Sum_3_grad/Tile*
transpose_b( *
transpose_a(*
T0

.gradients/dense_6/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_6/MatMul_grad/MatMul'^gradients/dense_6/MatMul_grad/MatMul_1
Û
6gradients/dense_6/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_6/MatMul_grad/MatMul/^gradients/dense_6/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/dense_6/MatMul_grad/MatMul*
T0
á
8gradients/dense_6/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_6/MatMul_grad/MatMul_1/^gradients/dense_6/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/dense_6/MatMul_grad/MatMul_1*
T0
J
gradients/add_1_grad/ShapeShapeaction_probs*
out_type0*
T0
E
gradients/add_1_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0

gradients/add_1_grad/SumSumgradients/Log_grad/mul*gradients/add_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
Tshape0

gradients/add_1_grad/Sum_1Sumgradients/Log_grad/mul,gradients/add_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
z
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
¹
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_1_grad/Reshape*
T0
¿
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1*
T0
Ç
gradients/AddNAddN-gradients/mul_3_grad/tuple/control_dependency=gradients/clip_by_value/Minimum_grad/tuple/control_dependency*/
_class%
#!loc:@gradients/mul_3_grad/Reshape*
T0*
N
E
gradients/truediv_grad/ShapeShapeSum_1*
out_type0*
T0
G
gradients/truediv_grad/Shape_1Shapeadd_2*
out_type0*
T0

,gradients/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_grad/Shapegradients/truediv_grad/Shape_1*
T0
I
gradients/truediv_grad/RealDivRealDivgradients/AddNadd_2*
T0

gradients/truediv_grad/SumSumgradients/truediv_grad/RealDiv,gradients/truediv_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
z
gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
T0*
Tshape0
1
gradients/truediv_grad/NegNegSum_1*
T0
W
 gradients/truediv_grad/RealDiv_1RealDivgradients/truediv_grad/Negadd_2*
T0
]
 gradients/truediv_grad/RealDiv_2RealDiv gradients/truediv_grad/RealDiv_1add_2*
T0
\
gradients/truediv_grad/mulMulgradients/AddN gradients/truediv_grad/RealDiv_2*
T0

gradients/truediv_grad/Sum_1Sumgradients/truediv_grad/mul.gradients/truediv_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

 gradients/truediv_grad/Reshape_1Reshapegradients/truediv_grad/Sum_1gradients/truediv_grad/Shape_1*
T0*
Tshape0
s
'gradients/truediv_grad/tuple/group_depsNoOp^gradients/truediv_grad/Reshape!^gradients/truediv_grad/Reshape_1
Á
/gradients/truediv_grad/tuple/control_dependencyIdentitygradients/truediv_grad/Reshape(^gradients/truediv_grad/tuple/group_deps*1
_class'
%#loc:@gradients/truediv_grad/Reshape*
T0
Ç
1gradients/truediv_grad/tuple/control_dependency_1Identity gradients/truediv_grad/Reshape_1(^gradients/truediv_grad/tuple/group_deps*3
_class)
'%loc:@gradients/truediv_grad/Reshape_1*
T0
C
gradients/Sum_1_grad/ShapeShapemul_1*
out_type0*
T0
C
gradients/Sum_1_grad/SizeConst*
value	B :*
dtype0
\
gradients/Sum_1_grad/addAddSum_1/reduction_indicesgradients/Sum_1_grad/Size*
T0
b
gradients/Sum_1_grad/modFloorModgradients/Sum_1_grad/addgradients/Sum_1_grad/Size*
T0
E
gradients/Sum_1_grad/Shape_1Const*
valueB *
dtype0
J
 gradients/Sum_1_grad/range/startConst*
value	B : *
dtype0
J
 gradients/Sum_1_grad/range/deltaConst*
value	B :*
dtype0

gradients/Sum_1_grad/rangeRange gradients/Sum_1_grad/range/startgradients/Sum_1_grad/Size gradients/Sum_1_grad/range/delta*

Tidx0
I
gradients/Sum_1_grad/Fill/valueConst*
value	B :*
dtype0
i
gradients/Sum_1_grad/FillFillgradients/Sum_1_grad/Shape_1gradients/Sum_1_grad/Fill/value*
T0
²
"gradients/Sum_1_grad/DynamicStitchDynamicStitchgradients/Sum_1_grad/rangegradients/Sum_1_grad/modgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Fill*
T0*
N
H
gradients/Sum_1_grad/Maximum/yConst*
value	B :*
dtype0
t
gradients/Sum_1_grad/MaximumMaximum"gradients/Sum_1_grad/DynamicStitchgradients/Sum_1_grad/Maximum/y*
T0
l
gradients/Sum_1_grad/floordivFloorDivgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Maximum*
T0

gradients/Sum_1_grad/ReshapeReshape/gradients/truediv_grad/tuple/control_dependency"gradients/Sum_1_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_1_grad/TileTilegradients/Sum_1_grad/Reshapegradients/Sum_1_grad/floordiv*

Tmultiples0*
T0
J
gradients/mul_1_grad/ShapeShapeaction_probs*
out_type0*
T0
V
gradients/mul_1_grad/Shape_1ShapeOneHotEncoding/one_hot*
out_type0*
T0

*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_1_grad/Shapegradients/mul_1_grad/Shape_1*
T0
[
gradients/mul_1_grad/mulMulgradients/Sum_1_grad/TileOneHotEncoding/one_hot*
T0

gradients/mul_1_grad/SumSumgradients/mul_1_grad/mul*gradients/mul_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
T0*
Tshape0
S
gradients/mul_1_grad/mul_1Mulaction_probsgradients/Sum_1_grad/Tile*
T0

gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
z
gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_1_grad/tuple/group_depsNoOp^gradients/mul_1_grad/Reshape^gradients/mul_1_grad/Reshape_1
¹
-gradients/mul_1_grad/tuple/control_dependencyIdentitygradients/mul_1_grad/Reshape&^gradients/mul_1_grad/tuple/group_deps*/
_class%
#!loc:@gradients/mul_1_grad/Reshape*
T0
¿
/gradients/mul_1_grad/tuple/control_dependency_1Identitygradients/mul_1_grad/Reshape_1&^gradients/mul_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/mul_1_grad/Reshape_1*
T0
ä
gradients/AddN_1AddN+gradients/mul_grad/tuple/control_dependency-gradients/add_1_grad/tuple/control_dependency-gradients/mul_1_grad/tuple/control_dependency*-
_class#
!loc:@gradients/mul_grad/Reshape*
T0*
N
O
gradients/action_probs_grad/mulMulgradients/AddN_1action_probs*
T0
_
1gradients/action_probs_grad/Sum/reduction_indicesConst*
valueB:*
dtype0
 
gradients/action_probs_grad/SumSumgradients/action_probs_grad/mul1gradients/action_probs_grad/Sum/reduction_indices*
T0*
	keep_dims( *

Tidx0
^
)gradients/action_probs_grad/Reshape/shapeConst*
valueB"ÿÿÿÿ   *
dtype0

#gradients/action_probs_grad/ReshapeReshapegradients/action_probs_grad/Sum)gradients/action_probs_grad/Reshape/shape*
T0*
Tshape0
f
gradients/action_probs_grad/subSubgradients/AddN_1#gradients/action_probs_grad/Reshape*
T0
`
!gradients/action_probs_grad/mul_1Mulgradients/action_probs_grad/subaction_probs*
T0

$gradients/dense_5/MatMul_grad/MatMulMatMul!gradients/action_probs_grad/mul_1dense_4/kernel/read*
transpose_b(*
transpose_a( *
T0

&gradients/dense_5/MatMul_grad/MatMul_1MatMulconcat!gradients/action_probs_grad/mul_1*
transpose_b( *
transpose_a(*
T0

.gradients/dense_5/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_5/MatMul_grad/MatMul'^gradients/dense_5/MatMul_grad/MatMul_1
Û
6gradients/dense_5/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_5/MatMul_grad/MatMul/^gradients/dense_5/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/dense_5/MatMul_grad/MatMul*
T0
á
8gradients/dense_5/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_5/MatMul_grad/MatMul_1/^gradients/dense_5/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/dense_5/MatMul_grad/MatMul_1*
T0
Ó
gradients/AddN_2AddN6gradients/dense_6/MatMul_grad/tuple/control_dependency6gradients/dense_5/MatMul_grad/tuple/control_dependency*7
_class-
+)loc:@gradients/dense_6/MatMul_grad/MatMul*
T0*
N
D
gradients/concat_grad/RankConst*
value	B :*
dtype0
W
gradients/concat_grad/modFloorModconcat/axisgradients/concat_grad/Rank*
T0
J
gradients/concat_grad/ShapeShapedense_2/Elu*
out_type0*
T0
b
gradients/concat_grad/ShapeNShapeNdense_2/Eludense_4/Elu*
out_type0*
T0*
N

"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/modgradients/concat_grad/ShapeNgradients/concat_grad/ShapeN:1*
N

gradients/concat_grad/SliceSlicegradients/AddN_2"gradients/concat_grad/ConcatOffsetgradients/concat_grad/ShapeN*
T0*
Index0

gradients/concat_grad/Slice_1Slicegradients/AddN_2$gradients/concat_grad/ConcatOffset:1gradients/concat_grad/ShapeN:1*
T0*
Index0
l
&gradients/concat_grad/tuple/group_depsNoOp^gradients/concat_grad/Slice^gradients/concat_grad/Slice_1
¹
.gradients/concat_grad/tuple/control_dependencyIdentitygradients/concat_grad/Slice'^gradients/concat_grad/tuple/group_deps*.
_class$
" loc:@gradients/concat_grad/Slice*
T0
¿
0gradients/concat_grad/tuple/control_dependency_1Identitygradients/concat_grad/Slice_1'^gradients/concat_grad/tuple/group_deps*0
_class&
$"loc:@gradients/concat_grad/Slice_1*
T0
s
"gradients/dense_2/Elu_grad/EluGradEluGrad.gradients/concat_grad/tuple/control_dependencydense_2/Elu*
T0
u
"gradients/dense_4/Elu_grad/EluGradEluGrad0gradients/concat_grad/tuple/control_dependency_1dense_4/Elu*
T0

$gradients/dense_2/MatMul_grad/MatMulMatMul"gradients/dense_2/Elu_grad/EluGraddense_1/kernel/read*
transpose_b(*
transpose_a( *
T0

&gradients/dense_2/MatMul_grad/MatMul_1MatMul	dense/Elu"gradients/dense_2/Elu_grad/EluGrad*
transpose_b( *
transpose_a(*
T0

.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1
Û
6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul*
T0
á
8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1*
T0

$gradients/dense_4/MatMul_grad/MatMulMatMul"gradients/dense_4/Elu_grad/EluGraddense_3/kernel/read*
transpose_b(*
transpose_a( *
T0

&gradients/dense_4/MatMul_grad/MatMul_1MatMuldense_3/Elu"gradients/dense_4/Elu_grad/EluGrad*
transpose_b( *
transpose_a(*
T0

.gradients/dense_4/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_4/MatMul_grad/MatMul'^gradients/dense_4/MatMul_grad/MatMul_1
Û
6gradients/dense_4/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_4/MatMul_grad/MatMul/^gradients/dense_4/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/dense_4/MatMul_grad/MatMul*
T0
á
8gradients/dense_4/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_4/MatMul_grad/MatMul_1/^gradients/dense_4/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/dense_4/MatMul_grad/MatMul_1*
T0
w
 gradients/dense/Elu_grad/EluGradEluGrad6gradients/dense_2/MatMul_grad/tuple/control_dependency	dense/Elu*
T0
{
"gradients/dense_3/Elu_grad/EluGradEluGrad6gradients/dense_4/MatMul_grad/tuple/control_dependencydense_3/Elu*
T0

"gradients/dense/MatMul_grad/MatMulMatMul gradients/dense/Elu_grad/EluGraddense/kernel/read*
transpose_b(*
transpose_a( *
T0

$gradients/dense/MatMul_grad/MatMul_1MatMulFlatten/Reshape gradients/dense/Elu_grad/EluGrad*
transpose_b( *
transpose_a(*
T0

,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
Ó
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul*
T0
Ù
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1*
T0

$gradients/dense_3/MatMul_grad/MatMulMatMul"gradients/dense_3/Elu_grad/EluGraddense_2/kernel/read*
transpose_b(*
transpose_a( *
T0

&gradients/dense_3/MatMul_grad/MatMul_1MatMulstate"gradients/dense_3/Elu_grad/EluGrad*
transpose_b( *
transpose_a(*
T0

.gradients/dense_3/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_3/MatMul_grad/MatMul'^gradients/dense_3/MatMul_grad/MatMul_1
Û
6gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_3/MatMul_grad/MatMul/^gradients/dense_3/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/dense_3/MatMul_grad/MatMul*
T0
á
8gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_3/MatMul_grad/MatMul_1/^gradients/dense_3/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/dense_3/MatMul_grad/MatMul_1*
T0
T
$gradients/Flatten/Reshape_grad/ShapeShapeconv2d_2/Elu*
out_type0*
T0
¤
&gradients/Flatten/Reshape_grad/ReshapeReshape4gradients/dense/MatMul_grad/tuple/control_dependency$gradients/Flatten/Reshape_grad/Shape*
T0*
Tshape0
m
#gradients/conv2d_2/Elu_grad/EluGradEluGrad&gradients/Flatten/Reshape_grad/Reshapeconv2d_2/Elu*
T0
W
)gradients/conv2d_2/convolution_grad/ShapeShape
conv2d/Elu*
out_type0*
T0

7gradients/conv2d_2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput)gradients/conv2d_2/convolution_grad/Shapeconv2d_1/kernel/read#gradients/conv2d_2/Elu_grad/EluGrad*
data_formatNHWC*
strides
*
T0*
use_cudnn_on_gpu(*
paddingVALID
h
+gradients/conv2d_2/convolution_grad/Shape_1Const*%
valueB"             *
dtype0

8gradients/conv2d_2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilter
conv2d/Elu+gradients/conv2d_2/convolution_grad/Shape_1#gradients/conv2d_2/Elu_grad/EluGrad*
data_formatNHWC*
strides
*
T0*
use_cudnn_on_gpu(*
paddingVALID
±
4gradients/conv2d_2/convolution_grad/tuple/group_depsNoOp8^gradients/conv2d_2/convolution_grad/Conv2DBackpropInput9^gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter

<gradients/conv2d_2/convolution_grad/tuple/control_dependencyIdentity7gradients/conv2d_2/convolution_grad/Conv2DBackpropInput5^gradients/conv2d_2/convolution_grad/tuple/group_deps*J
_class@
><loc:@gradients/conv2d_2/convolution_grad/Conv2DBackpropInput*
T0

>gradients/conv2d_2/convolution_grad/tuple/control_dependency_1Identity8gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter5^gradients/conv2d_2/convolution_grad/tuple/group_deps*K
_classA
?=loc:@gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter*
T0

!gradients/conv2d/Elu_grad/EluGradEluGrad<gradients/conv2d_2/convolution_grad/tuple/control_dependency
conv2d/Elu*
T0
X
'gradients/conv2d/convolution_grad/ShapeShapeobservation_0*
out_type0*
T0

5gradients/conv2d/convolution_grad/Conv2DBackpropInputConv2DBackpropInput'gradients/conv2d/convolution_grad/Shapeconv2d/kernel/read!gradients/conv2d/Elu_grad/EluGrad*
data_formatNHWC*
strides
*
T0*
use_cudnn_on_gpu(*
paddingVALID
f
)gradients/conv2d/convolution_grad/Shape_1Const*%
valueB"            *
dtype0

6gradients/conv2d/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterobservation_0)gradients/conv2d/convolution_grad/Shape_1!gradients/conv2d/Elu_grad/EluGrad*
data_formatNHWC*
strides
*
T0*
use_cudnn_on_gpu(*
paddingVALID
«
2gradients/conv2d/convolution_grad/tuple/group_depsNoOp6^gradients/conv2d/convolution_grad/Conv2DBackpropInput7^gradients/conv2d/convolution_grad/Conv2DBackpropFilter

:gradients/conv2d/convolution_grad/tuple/control_dependencyIdentity5gradients/conv2d/convolution_grad/Conv2DBackpropInput3^gradients/conv2d/convolution_grad/tuple/group_deps*H
_class>
<:loc:@gradients/conv2d/convolution_grad/Conv2DBackpropInput*
T0

<gradients/conv2d/convolution_grad/tuple/control_dependency_1Identity6gradients/conv2d/convolution_grad/Conv2DBackpropFilter3^gradients/conv2d/convolution_grad/tuple/group_deps*I
_class?
=;loc:@gradients/conv2d/convolution_grad/Conv2DBackpropFilter*
T0
h
beta1_power/initial_valueConst* 
_class
loc:@conv2d/kernel*
valueB
 *fff?*
dtype0
y
beta1_power
VariableV2* 
_class
loc:@conv2d/kernel*
	container *
shape: *
dtype0*
shared_name 

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
validate_shape(*
T0* 
_class
loc:@conv2d/kernel
T
beta1_power/readIdentitybeta1_power* 
_class
loc:@conv2d/kernel*
T0
h
beta2_power/initial_valueConst* 
_class
loc:@conv2d/kernel*
valueB
 *w¾?*
dtype0
y
beta2_power
VariableV2* 
_class
loc:@conv2d/kernel*
	container *
shape: *
dtype0*
shared_name 

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
validate_shape(*
T0* 
_class
loc:@conv2d/kernel
T
beta2_power/readIdentitybeta2_power* 
_class
loc:@conv2d/kernel*
T0

$conv2d/kernel/Adam/Initializer/zerosConst* 
_class
loc:@conv2d/kernel*%
valueB*    *
dtype0

conv2d/kernel/Adam
VariableV2* 
_class
loc:@conv2d/kernel*
	container *
shape:*
dtype0*
shared_name 
±
conv2d/kernel/Adam/AssignAssignconv2d/kernel/Adam$conv2d/kernel/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0* 
_class
loc:@conv2d/kernel
b
conv2d/kernel/Adam/readIdentityconv2d/kernel/Adam* 
_class
loc:@conv2d/kernel*
T0

&conv2d/kernel/Adam_1/Initializer/zerosConst* 
_class
loc:@conv2d/kernel*%
valueB*    *
dtype0

conv2d/kernel/Adam_1
VariableV2* 
_class
loc:@conv2d/kernel*
	container *
shape:*
dtype0*
shared_name 
·
conv2d/kernel/Adam_1/AssignAssignconv2d/kernel/Adam_1&conv2d/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0* 
_class
loc:@conv2d/kernel
f
conv2d/kernel/Adam_1/readIdentityconv2d/kernel/Adam_1* 
_class
loc:@conv2d/kernel*
T0

&conv2d_1/kernel/Adam/Initializer/zerosConst*"
_class
loc:@conv2d_1/kernel*%
valueB *    *
dtype0

conv2d_1/kernel/Adam
VariableV2*"
_class
loc:@conv2d_1/kernel*
	container *
shape: *
dtype0*
shared_name 
¹
conv2d_1/kernel/Adam/AssignAssignconv2d_1/kernel/Adam&conv2d_1/kernel/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*"
_class
loc:@conv2d_1/kernel
h
conv2d_1/kernel/Adam/readIdentityconv2d_1/kernel/Adam*"
_class
loc:@conv2d_1/kernel*
T0

(conv2d_1/kernel/Adam_1/Initializer/zerosConst*"
_class
loc:@conv2d_1/kernel*%
valueB *    *
dtype0

conv2d_1/kernel/Adam_1
VariableV2*"
_class
loc:@conv2d_1/kernel*
	container *
shape: *
dtype0*
shared_name 
¿
conv2d_1/kernel/Adam_1/AssignAssignconv2d_1/kernel/Adam_1(conv2d_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*"
_class
loc:@conv2d_1/kernel
l
conv2d_1/kernel/Adam_1/readIdentityconv2d_1/kernel/Adam_1*"
_class
loc:@conv2d_1/kernel*
T0
y
#dense/kernel/Adam/Initializer/zerosConst*
_class
loc:@dense/kernel*
valueB @*    *
dtype0

dense/kernel/Adam
VariableV2*
_class
loc:@dense/kernel*
	container *
shape
: @*
dtype0*
shared_name 
­
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_class
loc:@dense/kernel
_
dense/kernel/Adam/readIdentitydense/kernel/Adam*
_class
loc:@dense/kernel*
T0
{
%dense/kernel/Adam_1/Initializer/zerosConst*
_class
loc:@dense/kernel*
valueB @*    *
dtype0

dense/kernel/Adam_1
VariableV2*
_class
loc:@dense/kernel*
	container *
shape
: @*
dtype0*
shared_name 
³
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_class
loc:@dense/kernel
c
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
_class
loc:@dense/kernel*
T0
}
%dense_1/kernel/Adam/Initializer/zerosConst*!
_class
loc:@dense_1/kernel*
valueB@@*    *
dtype0

dense_1/kernel/Adam
VariableV2*!
_class
loc:@dense_1/kernel*
	container *
shape
:@@*
dtype0*
shared_name 
µ
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_1/kernel
e
dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*!
_class
loc:@dense_1/kernel*
T0

'dense_1/kernel/Adam_1/Initializer/zerosConst*!
_class
loc:@dense_1/kernel*
valueB@@*    *
dtype0

dense_1/kernel/Adam_1
VariableV2*!
_class
loc:@dense_1/kernel*
	container *
shape
:@@*
dtype0*
shared_name 
»
dense_1/kernel/Adam_1/AssignAssigndense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_1/kernel
i
dense_1/kernel/Adam_1/readIdentitydense_1/kernel/Adam_1*!
_class
loc:@dense_1/kernel*
T0
}
%dense_2/kernel/Adam/Initializer/zerosConst*!
_class
loc:@dense_2/kernel*
valueB@*    *
dtype0

dense_2/kernel/Adam
VariableV2*!
_class
loc:@dense_2/kernel*
	container *
shape
:@*
dtype0*
shared_name 
µ
dense_2/kernel/Adam/AssignAssigndense_2/kernel/Adam%dense_2/kernel/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_2/kernel
e
dense_2/kernel/Adam/readIdentitydense_2/kernel/Adam*!
_class
loc:@dense_2/kernel*
T0

'dense_2/kernel/Adam_1/Initializer/zerosConst*!
_class
loc:@dense_2/kernel*
valueB@*    *
dtype0

dense_2/kernel/Adam_1
VariableV2*!
_class
loc:@dense_2/kernel*
	container *
shape
:@*
dtype0*
shared_name 
»
dense_2/kernel/Adam_1/AssignAssigndense_2/kernel/Adam_1'dense_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_2/kernel
i
dense_2/kernel/Adam_1/readIdentitydense_2/kernel/Adam_1*!
_class
loc:@dense_2/kernel*
T0
}
%dense_3/kernel/Adam/Initializer/zerosConst*!
_class
loc:@dense_3/kernel*
valueB@@*    *
dtype0

dense_3/kernel/Adam
VariableV2*!
_class
loc:@dense_3/kernel*
	container *
shape
:@@*
dtype0*
shared_name 
µ
dense_3/kernel/Adam/AssignAssigndense_3/kernel/Adam%dense_3/kernel/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_3/kernel
e
dense_3/kernel/Adam/readIdentitydense_3/kernel/Adam*!
_class
loc:@dense_3/kernel*
T0

'dense_3/kernel/Adam_1/Initializer/zerosConst*!
_class
loc:@dense_3/kernel*
valueB@@*    *
dtype0

dense_3/kernel/Adam_1
VariableV2*!
_class
loc:@dense_3/kernel*
	container *
shape
:@@*
dtype0*
shared_name 
»
dense_3/kernel/Adam_1/AssignAssigndense_3/kernel/Adam_1'dense_3/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_3/kernel
i
dense_3/kernel/Adam_1/readIdentitydense_3/kernel/Adam_1*!
_class
loc:@dense_3/kernel*
T0
~
%dense_4/kernel/Adam/Initializer/zerosConst*!
_class
loc:@dense_4/kernel*
valueB	*    *
dtype0

dense_4/kernel/Adam
VariableV2*!
_class
loc:@dense_4/kernel*
	container *
shape:	*
dtype0*
shared_name 
µ
dense_4/kernel/Adam/AssignAssigndense_4/kernel/Adam%dense_4/kernel/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_4/kernel
e
dense_4/kernel/Adam/readIdentitydense_4/kernel/Adam*!
_class
loc:@dense_4/kernel*
T0

'dense_4/kernel/Adam_1/Initializer/zerosConst*!
_class
loc:@dense_4/kernel*
valueB	*    *
dtype0

dense_4/kernel/Adam_1
VariableV2*!
_class
loc:@dense_4/kernel*
	container *
shape:	*
dtype0*
shared_name 
»
dense_4/kernel/Adam_1/AssignAssigndense_4/kernel/Adam_1'dense_4/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_4/kernel
i
dense_4/kernel/Adam_1/readIdentitydense_4/kernel/Adam_1*!
_class
loc:@dense_4/kernel*
T0
~
%dense_5/kernel/Adam/Initializer/zerosConst*!
_class
loc:@dense_5/kernel*
valueB	*    *
dtype0

dense_5/kernel/Adam
VariableV2*!
_class
loc:@dense_5/kernel*
	container *
shape:	*
dtype0*
shared_name 
µ
dense_5/kernel/Adam/AssignAssigndense_5/kernel/Adam%dense_5/kernel/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_5/kernel
e
dense_5/kernel/Adam/readIdentitydense_5/kernel/Adam*!
_class
loc:@dense_5/kernel*
T0

'dense_5/kernel/Adam_1/Initializer/zerosConst*!
_class
loc:@dense_5/kernel*
valueB	*    *
dtype0

dense_5/kernel/Adam_1
VariableV2*!
_class
loc:@dense_5/kernel*
	container *
shape:	*
dtype0*
shared_name 
»
dense_5/kernel/Adam_1/AssignAssigndense_5/kernel/Adam_1'dense_5/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_5/kernel
i
dense_5/kernel/Adam_1/readIdentitydense_5/kernel/Adam_1*!
_class
loc:@dense_5/kernel*
T0
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *w¾?*
dtype0
9
Adam/epsilonConst*
valueB
 *wÌ+2*
dtype0
Ö
#Adam/update_conv2d/kernel/ApplyAdam	ApplyAdamconv2d/kernelconv2d/kernel/Adamconv2d/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon<gradients/conv2d/convolution_grad/tuple/control_dependency_1*
use_locking( * 
_class
loc:@conv2d/kernel*
use_nesterov( *
T0
â
%Adam/update_conv2d_1/kernel/ApplyAdam	ApplyAdamconv2d_1/kernelconv2d_1/kernel/Adamconv2d_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon>gradients/conv2d_2/convolution_grad/tuple/control_dependency_1*
use_locking( *"
_class
loc:@conv2d_1/kernel*
use_nesterov( *
T0
Ë
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
_class
loc:@dense/kernel*
use_nesterov( *
T0
×
$Adam/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
use_locking( *!
_class
loc:@dense_1/kernel*
use_nesterov( *
T0
×
$Adam/update_dense_2/kernel/ApplyAdam	ApplyAdamdense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_3/MatMul_grad/tuple/control_dependency_1*
use_locking( *!
_class
loc:@dense_2/kernel*
use_nesterov( *
T0
×
$Adam/update_dense_3/kernel/ApplyAdam	ApplyAdamdense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_4/MatMul_grad/tuple/control_dependency_1*
use_locking( *!
_class
loc:@dense_3/kernel*
use_nesterov( *
T0
×
$Adam/update_dense_4/kernel/ApplyAdam	ApplyAdamdense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_5/MatMul_grad/tuple/control_dependency_1*
use_locking( *!
_class
loc:@dense_4/kernel*
use_nesterov( *
T0
×
$Adam/update_dense_5/kernel/ApplyAdam	ApplyAdamdense_5/kerneldense_5/kernel/Adamdense_5/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_6/MatMul_grad/tuple/control_dependency_1*
use_locking( *!
_class
loc:@dense_5/kernel*
use_nesterov( *
T0

Adam/mulMulbeta1_power/read
Adam/beta1$^Adam/update_conv2d/kernel/ApplyAdam&^Adam/update_conv2d_1/kernel/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam* 
_class
loc:@conv2d/kernel*
T0

Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
validate_shape(*
T0* 
_class
loc:@conv2d/kernel


Adam/mul_1Mulbeta2_power/read
Adam/beta2$^Adam/update_conv2d/kernel/ApplyAdam&^Adam/update_conv2d_1/kernel/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam* 
_class
loc:@conv2d/kernel*
T0

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
validate_shape(*
T0* 
_class
loc:@conv2d/kernel
à
AdamNoOp$^Adam/update_conv2d/kernel/ApplyAdam&^Adam/update_conv2d_1/kernel/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam^Adam/Assign^Adam/Assign_1
ú
initNoOp^global_step/Assign^last_reward/Assign^conv2d/kernel/Assign^conv2d_1/kernel/Assign^dense/kernel/Assign^dense_1/kernel/Assign^dense_2/kernel/Assign^dense_3/kernel/Assign^dense_4/kernel/Assign^dense_5/kernel/Assign^beta1_power/Assign^beta2_power/Assign^conv2d/kernel/Adam/Assign^conv2d/kernel/Adam_1/Assign^conv2d_1/kernel/Adam/Assign^conv2d_1/kernel/Adam_1/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_2/kernel/Adam/Assign^dense_2/kernel/Adam_1/Assign^dense_3/kernel/Adam/Assign^dense_3/kernel/Adam_1/Assign^dense_4/kernel/Adam/Assign^dense_4/kernel/Adam_1/Assign^dense_5/kernel/Adam/Assign^dense_5/kernel/Adam_1/Assign
8

save/ConstConst*
valueB Bmodel*
dtype0
Ô
save/SaveV2/tensor_namesConst*£
valueBBbeta1_powerBbeta2_powerBconv2d/kernelBconv2d/kernel/AdamBconv2d/kernel/Adam_1Bconv2d_1/kernelBconv2d_1/kernel/AdamBconv2d_1/kernel/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bdense_4/kernelBdense_4/kernel/AdamBdense_4/kernel/Adam_1Bdense_5/kernelBdense_5/kernel/AdamBdense_5/kernel/Adam_1Bglobal_stepBlast_reward*
dtype0

save/SaveV2/shape_and_slicesConst*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0

save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerconv2d/kernelconv2d/kernel/Adamconv2d/kernel/Adam_1conv2d_1/kernelconv2d_1/kernel/Adamconv2d_1/kernel/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1dense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1dense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1dense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1dense_5/kerneldense_5/kernel/Adamdense_5/kernel/Adam_1global_steplast_reward**
dtypes 
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
T0
S
save/RestoreV2/tensor_namesConst* 
valueBBbeta1_power*
dtype0
L
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
v
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2

save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
validate_shape(*
T0* 
_class
loc:@conv2d/kernel
U
save/RestoreV2_1/tensor_namesConst* 
valueBBbeta2_power*
dtype0
N
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2

save/Assign_1Assignbeta2_powersave/RestoreV2_1*
use_locking(*
validate_shape(*
T0* 
_class
loc:@conv2d/kernel
W
save/RestoreV2_2/tensor_namesConst*"
valueBBconv2d/kernel*
dtype0
N
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2

save/Assign_2Assignconv2d/kernelsave/RestoreV2_2*
use_locking(*
validate_shape(*
T0* 
_class
loc:@conv2d/kernel
\
save/RestoreV2_3/tensor_namesConst*'
valueBBconv2d/kernel/Adam*
dtype0
N
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2

save/Assign_3Assignconv2d/kernel/Adamsave/RestoreV2_3*
use_locking(*
validate_shape(*
T0* 
_class
loc:@conv2d/kernel
^
save/RestoreV2_4/tensor_namesConst*)
value BBconv2d/kernel/Adam_1*
dtype0
N
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2

save/Assign_4Assignconv2d/kernel/Adam_1save/RestoreV2_4*
use_locking(*
validate_shape(*
T0* 
_class
loc:@conv2d/kernel
Y
save/RestoreV2_5/tensor_namesConst*$
valueBBconv2d_1/kernel*
dtype0
N
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2

save/Assign_5Assignconv2d_1/kernelsave/RestoreV2_5*
use_locking(*
validate_shape(*
T0*"
_class
loc:@conv2d_1/kernel
^
save/RestoreV2_6/tensor_namesConst*)
value BBconv2d_1/kernel/Adam*
dtype0
N
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2

save/Assign_6Assignconv2d_1/kernel/Adamsave/RestoreV2_6*
use_locking(*
validate_shape(*
T0*"
_class
loc:@conv2d_1/kernel
`
save/RestoreV2_7/tensor_namesConst*+
value"B Bconv2d_1/kernel/Adam_1*
dtype0
N
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2

save/Assign_7Assignconv2d_1/kernel/Adam_1save/RestoreV2_7*
use_locking(*
validate_shape(*
T0*"
_class
loc:@conv2d_1/kernel
V
save/RestoreV2_8/tensor_namesConst*!
valueBBdense/kernel*
dtype0
N
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2

save/Assign_8Assigndense/kernelsave/RestoreV2_8*
use_locking(*
validate_shape(*
T0*
_class
loc:@dense/kernel
[
save/RestoreV2_9/tensor_namesConst*&
valueBBdense/kernel/Adam*
dtype0
N
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2

save/Assign_9Assigndense/kernel/Adamsave/RestoreV2_9*
use_locking(*
validate_shape(*
T0*
_class
loc:@dense/kernel
^
save/RestoreV2_10/tensor_namesConst*(
valueBBdense/kernel/Adam_1*
dtype0
O
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2

save/Assign_10Assigndense/kernel/Adam_1save/RestoreV2_10*
use_locking(*
validate_shape(*
T0*
_class
loc:@dense/kernel
Y
save/RestoreV2_11/tensor_namesConst*#
valueBBdense_1/kernel*
dtype0
O
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2

save/Assign_11Assigndense_1/kernelsave/RestoreV2_11*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_1/kernel
^
save/RestoreV2_12/tensor_namesConst*(
valueBBdense_1/kernel/Adam*
dtype0
O
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2

save/Assign_12Assigndense_1/kernel/Adamsave/RestoreV2_12*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_1/kernel
`
save/RestoreV2_13/tensor_namesConst**
value!BBdense_1/kernel/Adam_1*
dtype0
O
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2

save/Assign_13Assigndense_1/kernel/Adam_1save/RestoreV2_13*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_1/kernel
Y
save/RestoreV2_14/tensor_namesConst*#
valueBBdense_2/kernel*
dtype0
O
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2

save/Assign_14Assigndense_2/kernelsave/RestoreV2_14*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_2/kernel
^
save/RestoreV2_15/tensor_namesConst*(
valueBBdense_2/kernel/Adam*
dtype0
O
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2

save/Assign_15Assigndense_2/kernel/Adamsave/RestoreV2_15*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_2/kernel
`
save/RestoreV2_16/tensor_namesConst**
value!BBdense_2/kernel/Adam_1*
dtype0
O
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2

save/Assign_16Assigndense_2/kernel/Adam_1save/RestoreV2_16*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_2/kernel
Y
save/RestoreV2_17/tensor_namesConst*#
valueBBdense_3/kernel*
dtype0
O
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2

save/Assign_17Assigndense_3/kernelsave/RestoreV2_17*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_3/kernel
^
save/RestoreV2_18/tensor_namesConst*(
valueBBdense_3/kernel/Adam*
dtype0
O
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2

save/Assign_18Assigndense_3/kernel/Adamsave/RestoreV2_18*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_3/kernel
`
save/RestoreV2_19/tensor_namesConst**
value!BBdense_3/kernel/Adam_1*
dtype0
O
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2

save/Assign_19Assigndense_3/kernel/Adam_1save/RestoreV2_19*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_3/kernel
Y
save/RestoreV2_20/tensor_namesConst*#
valueBBdense_4/kernel*
dtype0
O
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2

save/Assign_20Assigndense_4/kernelsave/RestoreV2_20*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_4/kernel
^
save/RestoreV2_21/tensor_namesConst*(
valueBBdense_4/kernel/Adam*
dtype0
O
"save/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2

save/Assign_21Assigndense_4/kernel/Adamsave/RestoreV2_21*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_4/kernel
`
save/RestoreV2_22/tensor_namesConst**
value!BBdense_4/kernel/Adam_1*
dtype0
O
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2

save/Assign_22Assigndense_4/kernel/Adam_1save/RestoreV2_22*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_4/kernel
Y
save/RestoreV2_23/tensor_namesConst*#
valueBBdense_5/kernel*
dtype0
O
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2

save/Assign_23Assigndense_5/kernelsave/RestoreV2_23*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_5/kernel
^
save/RestoreV2_24/tensor_namesConst*(
valueBBdense_5/kernel/Adam*
dtype0
O
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2

save/Assign_24Assigndense_5/kernel/Adamsave/RestoreV2_24*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_5/kernel
`
save/RestoreV2_25/tensor_namesConst**
value!BBdense_5/kernel/Adam_1*
dtype0
O
"save/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2

save/Assign_25Assigndense_5/kernel/Adam_1save/RestoreV2_25*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_5/kernel
V
save/RestoreV2_26/tensor_namesConst* 
valueBBglobal_step*
dtype0
O
"save/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2

save/Assign_26Assignglobal_stepsave/RestoreV2_26*
use_locking(*
validate_shape(*
T0*
_class
loc:@global_step
V
save/RestoreV2_27/tensor_namesConst* 
valueBBlast_reward*
dtype0
O
"save/RestoreV2_27/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
dtypes
2

save/Assign_27Assignlast_rewardsave/RestoreV2_27*
use_locking(*
validate_shape(*
T0*
_class
loc:@last_reward
è
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27
°
Const_3Const*
valueBBbetaB0.001BgammaB0.99BepsilonB0.2Bhidden_unitsB64BlambdB0.95Benv_nameB	fetcher13B	num_epochB5Btime_horizonB2048B
buffe_sizeB2048Brun_pathB	fetcher13Bcurriculum_fileBNoneBleaning_rateB0.0003B	max_stepsB500000.0B
batch_sizeB64*
dtype0
K
Hyperparameters/tagConst* 
valueB BHyperparameters*
dtype0
`
+Hyperparameters/serialized_summary_metadataConst*
valueB B


text{}*
dtype0
v
HyperparametersTensorSummaryV2Hyperparameters/tagConst_3+Hyperparameters/serialized_summary_metadata*
T0"