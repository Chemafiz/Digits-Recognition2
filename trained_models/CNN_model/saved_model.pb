ды
Є█
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Џ
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

ч
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%иЛ8"&
exponential_avg_factorfloat%  ђ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
ѓ
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.9.22v2.9.1-132-g18960c44ad38─ы
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:
*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ
*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	ђ
*
dtype0
q
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:ђ*
dtype0
z
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
љђ*
shared_namedense_3/kernel
s
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel* 
_output_shapes
:
љђ*
dtype0
б
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_2/moving_variance
Џ
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:*
dtype0
џ
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_2/moving_mean
Њ
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:*
dtype0
ї
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_2/beta
Ё
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
:*
dtype0
ј
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_2/gamma
Є
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:*
dtype0
ѓ
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:2* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:2*
dtype0
б
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*6
shared_name'%batch_normalization_1/moving_variance
Џ
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:2*
dtype0
џ
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*2
shared_name#!batch_normalization_1/moving_mean
Њ
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:2*
dtype0
ї
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*+
shared_namebatch_normalization_1/beta
Ё
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:2*
dtype0
ј
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*,
shared_namebatch_normalization_1/gamma
Є
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:2*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:2*
dtype0
ѓ
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:K2* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:K2*
dtype0
ъ
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*4
shared_name%#batch_normalization/moving_variance
Ќ
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:K*
dtype0
ќ
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*0
shared_name!batch_normalization/moving_mean
Ј
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:K*
dtype0
ѕ
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*)
shared_namebatch_normalization/beta
Ђ
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:K*
dtype0
і
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:K**
shared_namebatch_normalization/gamma
Ѓ
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:K*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:K*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:K*
dtype0

NoOpNoOp
Ўf
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*нe
value╩eBКe B└e
о
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
  _jit_compiled_convolution_op*
Н
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses
'axis
	(gamma
)beta
*moving_mean
+moving_variance*
ј
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses* 
╚
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias
 :_jit_compiled_convolution_op*
Ц
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
A_random_generator* 
Н
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses
Haxis
	Igamma
Jbeta
Kmoving_mean
Lmoving_variance*
ј
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses* 
╚
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses

Ykernel
Zbias
 [_jit_compiled_convolution_op*
Н
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses
baxis
	cgamma
dbeta
emoving_mean
fmoving_variance*
ј
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses* 
ј
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses* 
д
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses

ykernel
zbias*
Д
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+ђ&call_and_return_all_conditional_losses
Ђ_random_generator* 
«
ѓ	variables
Ѓtrainable_variables
ёregularization_losses
Ё	keras_api
є__call__
+Є&call_and_return_all_conditional_losses
ѕkernel
	Ѕbias*
г
0
1
(2
)3
*4
+5
86
97
I8
J9
K10
L11
Y12
Z13
c14
d15
e16
f17
y18
z19
ѕ20
Ѕ21*
|
0
1
(2
)3
84
95
I6
J7
Y8
Z9
c10
d11
y12
z13
ѕ14
Ѕ15*
* 
х
іnon_trainable_variables
Іlayers
їmetrics
 Їlayer_regularization_losses
јlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
Јtrace_0
љtrace_1
Љtrace_2
њtrace_3* 
:
Њtrace_0
ћtrace_1
Ћtrace_2
ќtrace_3* 
* 
>
	Ќiter

ўdecay
Ўlearning_rate
џmomentum*

Џserving_default* 

0
1*

0
1*
* 
ў
юnon_trainable_variables
Юlayers
ъmetrics
 Ъlayer_regularization_losses
аlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Аtrace_0* 

бtrace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
(0
)1
*2
+3*

(0
)1*
* 
ў
Бnon_trainable_variables
цlayers
Цmetrics
 дlayer_regularization_losses
Дlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

еtrace_0
Еtrace_1* 

фtrace_0
Фtrace_1* 
* 
hb
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
ќ
гnon_trainable_variables
Гlayers
«metrics
 »layer_regularization_losses
░layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 

▒trace_0* 

▓trace_0* 

80
91*

80
91*
* 
ў
│non_trainable_variables
┤layers
хmetrics
 Хlayer_regularization_losses
иlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

Иtrace_0* 

╣trace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ќ
║non_trainable_variables
╗layers
╝metrics
 йlayer_regularization_losses
Йlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 

┐trace_0
└trace_1* 

┴trace_0
┬trace_1* 
* 
 
I0
J1
K2
L3*

I0
J1*
* 
ў
├non_trainable_variables
─layers
┼metrics
 кlayer_regularization_losses
Кlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

╚trace_0
╔trace_1* 

╩trace_0
╦trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
ќ
╠non_trainable_variables
═layers
╬metrics
 ¤layer_regularization_losses
лlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses* 

Лtrace_0* 

мtrace_0* 

Y0
Z1*

Y0
Z1*
* 
ў
Мnon_trainable_variables
нlayers
Нmetrics
 оlayer_regularization_losses
Оlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*

пtrace_0* 

┘trace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
c0
d1
e2
f3*

c0
d1*
* 
ў
┌non_trainable_variables
█layers
▄metrics
 Пlayer_regularization_losses
яlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*

▀trace_0
Яtrace_1* 

рtrace_0
Рtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
ќ
сnon_trainable_variables
Сlayers
тmetrics
 Тlayer_regularization_losses
уlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses* 

Уtrace_0* 

жtrace_0* 
* 
* 
* 
ќ
Жnon_trainable_variables
вlayers
Вmetrics
 ьlayer_regularization_losses
Ьlayer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses* 

№trace_0* 

­trace_0* 

y0
z1*

y0
z1*
* 
ў
ыnon_trainable_variables
Ыlayers
зmetrics
 Зlayer_regularization_losses
шlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses*

Шtrace_0* 

эtrace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
ў
Эnon_trainable_variables
щlayers
Щmetrics
 чlayer_regularization_losses
Чlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses* 

§trace_0
■trace_1* 

 trace_0
ђtrace_1* 
* 

ѕ0
Ѕ1*

ѕ0
Ѕ1*
* 
ъ
Ђnon_trainable_variables
ѓlayers
Ѓmetrics
 ёlayer_regularization_losses
Ёlayer_metrics
ѓ	variables
Ѓtrainable_variables
ёregularization_losses
є__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses*

єtrace_0* 

Єtrace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
.
*0
+1
K2
L3
e4
f5*
j
0
1
2
3
4
5
6
7
	8

9
10
11
12
13*

ѕ0
Ѕ1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 

*0
+1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

K0
L1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

e0
f1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
і	variables
І	keras_api

їtotal

Їcount*
M
ј	variables
Ј	keras_api

љtotal

Љcount
њ
_fn_kwargs*

ї0
Ї1*

і	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

љ0
Љ1*

ј	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
Ј
serving_default_conv2d_inputPlaceholder*/
_output_shapes
:         *
dtype0*$
shape:         
 
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_inputconv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_2/kernelconv2d_2/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancedense_3/kerneldense_3/biasdense_4/kerneldense_4/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *-
f(R&
$__inference_signature_wrapper_482618
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ѓ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*+
Tin$
"2 	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *(
f#R!
__inference__traced_save_483400
д
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_2/kernelconv2d_2/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancedense_3/kerneldense_3/biasdense_4/kerneldense_4/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotal_1count_1totalcount**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *+
f&R$
"__inference__traced_restore_483500»┤
╣
┼
-__inference_sequential_1_layer_call_fn_482716

inputs!
unknown:K
	unknown_0:K
	unknown_1:K
	unknown_2:K
	unknown_3:K
	unknown_4:K#
	unknown_5:K2
	unknown_6:2
	unknown_7:2
	unknown_8:2
	unknown_9:2

unknown_10:2$

unknown_11:2

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:
љђ

unknown_18:	ђ

unknown_19:	ђ


unknown_20:

identityѕбStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_482343o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
њ
g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_483209

inputs
identityА
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
њ
g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_481933

inputs
identityА
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ѓ
§
D__inference_conv2d_2_layer_call_and_return_conditional_losses_483137

inputs8
conv2d_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
░
D
(__inference_flatten_layer_call_fn_483214

inputs
identity▓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_482037a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         љ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ь
ъ
)__inference_conv2d_2_layer_call_fn_483126

inputs!
unknown:2
	unknown_0:
identityѕбStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_482015w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
є
└
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_481837

inputs%
readvariableop_resource:2'
readvariableop_1_resource:26
(fusedbatchnormv3_readvariableop_resource:28
*fusedbatchnormv3_readvariableop_1_resource:2
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:2*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:2*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:2*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:2*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           2:2:2:2:2:*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           2н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           2: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           2
 
_user_specified_nameinputs
╦
╦
-__inference_sequential_1_layer_call_fn_482439
conv2d_input!
unknown:K
	unknown_0:K
	unknown_1:K
	unknown_2:K
	unknown_3:K
	unknown_4:K#
	unknown_5:K2
	unknown_6:2
	unknown_7:2
	unknown_8:2
	unknown_9:2

unknown_10:2$

unknown_11:2

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:
љђ

unknown_18:	ђ

unknown_19:	ђ


unknown_20:

identityѕбStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_482343o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         
&
_user_specified_nameconv2d_input
д

э
C__inference_dense_3_layer_call_and_return_conditional_losses_483240

inputs2
matmul_readvariableop_resource:
љђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
љђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         љ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         љ
 
_user_specified_nameinputs
ч	
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_483267

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ђC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>Д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ђj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         ђZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
╠
ю
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_483181

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
┼
_
C__inference_flatten_layer_call_and_return_conditional_losses_482037

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    љ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         љY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         љ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Ш
a
C__inference_dropout_layer_call_and_return_conditional_losses_481992

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         2c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         2:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
ј	
¤
4__inference_batch_normalization_layer_call_fn_482952

inputs
unknown:K
	unknown_0:K
	unknown_1:K
	unknown_2:K
identityѕбStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           K*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_481761Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           K`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           K: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           K
 
_user_specified_nameinputs
к
ќ
(__inference_dense_4_layer_call_fn_483276

inputs
unknown:	ђ

	unknown_0:

identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_482074o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Э
c
*__inference_dropout_1_layer_call_fn_483250

inputs
identityѕбStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_482158p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Г
а
!__inference__wrapped_model_481708
conv2d_inputL
2sequential_1_conv2d_conv2d_readvariableop_resource:KA
3sequential_1_conv2d_biasadd_readvariableop_resource:KF
8sequential_1_batch_normalization_readvariableop_resource:KH
:sequential_1_batch_normalization_readvariableop_1_resource:KW
Isequential_1_batch_normalization_fusedbatchnormv3_readvariableop_resource:KY
Ksequential_1_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:KN
4sequential_1_conv2d_1_conv2d_readvariableop_resource:K2C
5sequential_1_conv2d_1_biasadd_readvariableop_resource:2H
:sequential_1_batch_normalization_1_readvariableop_resource:2J
<sequential_1_batch_normalization_1_readvariableop_1_resource:2Y
Ksequential_1_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:2[
Msequential_1_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:2N
4sequential_1_conv2d_2_conv2d_readvariableop_resource:2C
5sequential_1_conv2d_2_biasadd_readvariableop_resource:H
:sequential_1_batch_normalization_2_readvariableop_resource:J
<sequential_1_batch_normalization_2_readvariableop_1_resource:Y
Ksequential_1_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:[
Msequential_1_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:G
3sequential_1_dense_3_matmul_readvariableop_resource:
љђC
4sequential_1_dense_3_biasadd_readvariableop_resource:	ђF
3sequential_1_dense_4_matmul_readvariableop_resource:	ђ
B
4sequential_1_dense_4_biasadd_readvariableop_resource:

identityѕб@sequential_1/batch_normalization/FusedBatchNormV3/ReadVariableOpбBsequential_1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1б/sequential_1/batch_normalization/ReadVariableOpб1sequential_1/batch_normalization/ReadVariableOp_1бBsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpбDsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1б1sequential_1/batch_normalization_1/ReadVariableOpб3sequential_1/batch_normalization_1/ReadVariableOp_1бBsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpбDsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1б1sequential_1/batch_normalization_2/ReadVariableOpб3sequential_1/batch_normalization_2/ReadVariableOp_1б*sequential_1/conv2d/BiasAdd/ReadVariableOpб)sequential_1/conv2d/Conv2D/ReadVariableOpб,sequential_1/conv2d_1/BiasAdd/ReadVariableOpб+sequential_1/conv2d_1/Conv2D/ReadVariableOpб,sequential_1/conv2d_2/BiasAdd/ReadVariableOpб+sequential_1/conv2d_2/Conv2D/ReadVariableOpб+sequential_1/dense_3/BiasAdd/ReadVariableOpб*sequential_1/dense_3/MatMul/ReadVariableOpб+sequential_1/dense_4/BiasAdd/ReadVariableOpб*sequential_1/dense_4/MatMul/ReadVariableOpц
)sequential_1/conv2d/Conv2D/ReadVariableOpReadVariableOp2sequential_1_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:K*
dtype0К
sequential_1/conv2d/Conv2DConv2Dconv2d_input1sequential_1/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         K*
paddingSAME*
strides
џ
*sequential_1/conv2d/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_conv2d_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0╣
sequential_1/conv2d/BiasAddBiasAdd#sequential_1/conv2d/Conv2D:output:02sequential_1/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         Kђ
sequential_1/conv2d/ReluRelu$sequential_1/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         Kц
/sequential_1/batch_normalization/ReadVariableOpReadVariableOp8sequential_1_batch_normalization_readvariableop_resource*
_output_shapes
:K*
dtype0е
1sequential_1/batch_normalization/ReadVariableOp_1ReadVariableOp:sequential_1_batch_normalization_readvariableop_1_resource*
_output_shapes
:K*
dtype0к
@sequential_1/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpIsequential_1_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:K*
dtype0╩
Bsequential_1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKsequential_1_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:K*
dtype0ч
1sequential_1/batch_normalization/FusedBatchNormV3FusedBatchNormV3&sequential_1/conv2d/Relu:activations:07sequential_1/batch_normalization/ReadVariableOp:value:09sequential_1/batch_normalization/ReadVariableOp_1:value:0Hsequential_1/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Jsequential_1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         K:K:K:K:K:*
epsilon%oЃ:*
is_training( л
"sequential_1/max_pooling2d/MaxPoolMaxPool5sequential_1/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:         K*
ksize
*
paddingSAME*
strides
е
+sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:K2*
dtype0Ж
sequential_1/conv2d_1/Conv2DConv2D+sequential_1/max_pooling2d/MaxPool:output:03sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2*
paddingSAME*
strides
ъ
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0┐
sequential_1/conv2d_1/BiasAddBiasAdd%sequential_1/conv2d_1/Conv2D:output:04sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2ё
sequential_1/conv2d_1/ReluRelu&sequential_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         2Ї
sequential_1/dropout/IdentityIdentity(sequential_1/conv2d_1/Relu:activations:0*
T0*/
_output_shapes
:         2е
1sequential_1/batch_normalization_1/ReadVariableOpReadVariableOp:sequential_1_batch_normalization_1_readvariableop_resource*
_output_shapes
:2*
dtype0г
3sequential_1/batch_normalization_1/ReadVariableOp_1ReadVariableOp<sequential_1_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:2*
dtype0╩
Bsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_1_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:2*
dtype0╬
Dsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_1_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:2*
dtype0Ё
3sequential_1/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3&sequential_1/dropout/Identity:output:09sequential_1/batch_normalization_1/ReadVariableOp:value:0;sequential_1/batch_normalization_1/ReadVariableOp_1:value:0Jsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         2:2:2:2:2:*
epsilon%oЃ:*
is_training( н
$sequential_1/max_pooling2d_1/MaxPoolMaxPool7sequential_1/batch_normalization_1/FusedBatchNormV3:y:0*/
_output_shapes
:         2*
ksize
*
paddingSAME*
strides
е
+sequential_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0В
sequential_1/conv2d_2/Conv2DConv2D-sequential_1/max_pooling2d_1/MaxPool:output:03sequential_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
ъ
,sequential_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┐
sequential_1/conv2d_2/BiasAddBiasAdd%sequential_1/conv2d_2/Conv2D:output:04sequential_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ё
sequential_1/conv2d_2/ReluRelu&sequential_1/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:         е
1sequential_1/batch_normalization_2/ReadVariableOpReadVariableOp:sequential_1_batch_normalization_2_readvariableop_resource*
_output_shapes
:*
dtype0г
3sequential_1/batch_normalization_2/ReadVariableOp_1ReadVariableOp<sequential_1_batch_normalization_2_readvariableop_1_resource*
_output_shapes
:*
dtype0╩
Bsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_1_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╬
Dsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_1_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Є
3sequential_1/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3(sequential_1/conv2d_2/Relu:activations:09sequential_1/batch_normalization_2/ReadVariableOp:value:0;sequential_1/batch_normalization_2/ReadVariableOp_1:value:0Jsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
is_training( н
$sequential_1/max_pooling2d_2/MaxPoolMaxPool7sequential_1/batch_normalization_2/FusedBatchNormV3:y:0*/
_output_shapes
:         *
ksize
*
paddingSAME*
strides
k
sequential_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    љ  «
sequential_1/flatten/ReshapeReshape-sequential_1/max_pooling2d_2/MaxPool:output:0#sequential_1/flatten/Const:output:0*
T0*(
_output_shapes
:         ља
*sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
љђ*
dtype0│
sequential_1/dense_3/MatMulMatMul%sequential_1/flatten/Reshape:output:02sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЮ
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Х
sequential_1/dense_3/BiasAddBiasAdd%sequential_1/dense_3/MatMul:product:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ{
sequential_1/dense_3/ReluRelu%sequential_1/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:         ђЄ
sequential_1/dropout_1/IdentityIdentity'sequential_1/dense_3/Relu:activations:0*
T0*(
_output_shapes
:         ђЪ
*sequential_1/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_4_matmul_readvariableop_resource*
_output_shapes
:	ђ
*
dtype0х
sequential_1/dense_4/MatMulMatMul(sequential_1/dropout_1/Identity:output:02sequential_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
ю
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0х
sequential_1/dense_4/BiasAddBiasAdd%sequential_1/dense_4/MatMul:product:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
ђ
sequential_1/dense_4/SoftmaxSoftmax%sequential_1/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:         
u
IdentityIdentity&sequential_1/dense_4/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         
ж	
NoOpNoOpA^sequential_1/batch_normalization/FusedBatchNormV3/ReadVariableOpC^sequential_1/batch_normalization/FusedBatchNormV3/ReadVariableOp_10^sequential_1/batch_normalization/ReadVariableOp2^sequential_1/batch_normalization/ReadVariableOp_1C^sequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpE^sequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12^sequential_1/batch_normalization_1/ReadVariableOp4^sequential_1/batch_normalization_1/ReadVariableOp_1C^sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpE^sequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12^sequential_1/batch_normalization_2/ReadVariableOp4^sequential_1/batch_normalization_2/ReadVariableOp_1+^sequential_1/conv2d/BiasAdd/ReadVariableOp*^sequential_1/conv2d/Conv2D/ReadVariableOp-^sequential_1/conv2d_1/BiasAdd/ReadVariableOp,^sequential_1/conv2d_1/Conv2D/ReadVariableOp-^sequential_1/conv2d_2/BiasAdd/ReadVariableOp,^sequential_1/conv2d_2/Conv2D/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp+^sequential_1/dense_3/MatMul/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp+^sequential_1/dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         : : : : : : : : : : : : : : : : : : : : : : 2ё
@sequential_1/batch_normalization/FusedBatchNormV3/ReadVariableOp@sequential_1/batch_normalization/FusedBatchNormV3/ReadVariableOp2ѕ
Bsequential_1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Bsequential_1/batch_normalization/FusedBatchNormV3/ReadVariableOp_12b
/sequential_1/batch_normalization/ReadVariableOp/sequential_1/batch_normalization/ReadVariableOp2f
1sequential_1/batch_normalization/ReadVariableOp_11sequential_1/batch_normalization/ReadVariableOp_12ѕ
Bsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpBsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2ї
Dsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Dsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12f
1sequential_1/batch_normalization_1/ReadVariableOp1sequential_1/batch_normalization_1/ReadVariableOp2j
3sequential_1/batch_normalization_1/ReadVariableOp_13sequential_1/batch_normalization_1/ReadVariableOp_12ѕ
Bsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpBsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2ї
Dsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Dsequential_1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12f
1sequential_1/batch_normalization_2/ReadVariableOp1sequential_1/batch_normalization_2/ReadVariableOp2j
3sequential_1/batch_normalization_2/ReadVariableOp_13sequential_1/batch_normalization_2/ReadVariableOp_12X
*sequential_1/conv2d/BiasAdd/ReadVariableOp*sequential_1/conv2d/BiasAdd/ReadVariableOp2V
)sequential_1/conv2d/Conv2D/ReadVariableOp)sequential_1/conv2d/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp,sequential_1/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_1/Conv2D/ReadVariableOp+sequential_1/conv2d_1/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_2/BiasAdd/ReadVariableOp,sequential_1/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_2/Conv2D/ReadVariableOp+sequential_1/conv2d_2/Conv2D/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2X
*sequential_1/dense_3/MatMul/ReadVariableOp*sequential_1/dense_3/MatMul/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2X
*sequential_1/dense_4/MatMul/ReadVariableOp*sequential_1/dense_4/MatMul/ReadVariableOp:] Y
/
_output_shapes
:         
&
_user_specified_nameconv2d_input
╠
ю
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_483089

inputs%
readvariableop_resource:2'
readvariableop_1_resource:26
(fusedbatchnormv3_readvariableop_resource:28
*fusedbatchnormv3_readvariableop_1_resource:2
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:2*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:2*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:2*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:2*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           2:2:2:2:2:*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           2░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           2: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           2
 
_user_specified_nameinputs
Ѓ
§
D__inference_conv2d_1_layer_call_and_return_conditional_losses_483018

inputs8
conv2d_readvariableop_resource:K2-
biasadd_readvariableop_resource:2
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:K2*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         2i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         2w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         K: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         K
 
_user_specified_nameinputs
▄
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_482061

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         ђ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ђ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
є
└
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_481913

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
╗
L
0__inference_max_pooling2d_1_layer_call_fn_483112

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_481857Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ђ
ч
B__inference_conv2d_layer_call_and_return_conditional_losses_481954

inputs8
conv2d_readvariableop_resource:K-
biasadd_readvariableop_resource:K
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:K*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         K*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:K*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         KX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         Ki
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         Kw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╩
џ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_482970

inputs%
readvariableop_resource:K'
readvariableop_1_resource:K6
(fusedbatchnormv3_readvariableop_resource:K8
*fusedbatchnormv3_readvariableop_1_resource:K
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:K*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:K*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:K*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:K*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           K:K:K:K:K:*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           K░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           K: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           K
 
_user_specified_nameinputs
д
F
*__inference_dropout_1_layer_call_fn_483245

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_482061a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
▒

b
C__inference_dropout_layer_call_and_return_conditional_losses_483045

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:ћ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         2w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         2q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         2a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         2:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
њ
g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_483117

inputs
identityА
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┼
_
C__inference_flatten_layer_call_and_return_conditional_losses_483220

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    љ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         љY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         љ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
є
└
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_483199

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
њ	
Л
6__inference_batch_normalization_1_layer_call_fn_483071

inputs
unknown:2
	unknown_0:2
	unknown_1:2
	unknown_2:2
identityѕбStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_481837Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           2
 
_user_specified_nameinputs
Й
D
(__inference_dropout_layer_call_fn_483023

inputs
identity╣
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_481992h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         2:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
▒

b
C__inference_dropout_layer_call_and_return_conditional_losses_482207

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:ћ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         2w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         2q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         2a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         2:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
Б

ш
C__inference_dense_4_layer_call_and_return_conditional_losses_482074

inputs1
matmul_readvariableop_resource:	ђ
-
biasadd_readvariableop_resource:

identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
щї
ы
H__inference_sequential_1_layer_call_and_return_conditional_losses_482906

inputs?
%conv2d_conv2d_readvariableop_resource:K4
&conv2d_biasadd_readvariableop_resource:K9
+batch_normalization_readvariableop_resource:K;
-batch_normalization_readvariableop_1_resource:KJ
<batch_normalization_fusedbatchnormv3_readvariableop_resource:KL
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:KA
'conv2d_1_conv2d_readvariableop_resource:K26
(conv2d_1_biasadd_readvariableop_resource:2;
-batch_normalization_1_readvariableop_resource:2=
/batch_normalization_1_readvariableop_1_resource:2L
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:2N
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:2A
'conv2d_2_conv2d_readvariableop_resource:26
(conv2d_2_biasadd_readvariableop_resource:;
-batch_normalization_2_readvariableop_resource:=
/batch_normalization_2_readvariableop_1_resource:L
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource::
&dense_3_matmul_readvariableop_resource:
љђ6
'dense_3_biasadd_readvariableop_resource:	ђ9
&dense_4_matmul_readvariableop_resource:	ђ
5
'dense_4_biasadd_readvariableop_resource:

identityѕб"batch_normalization/AssignNewValueб$batch_normalization/AssignNewValue_1б3batch_normalization/FusedBatchNormV3/ReadVariableOpб5batch_normalization/FusedBatchNormV3/ReadVariableOp_1б"batch_normalization/ReadVariableOpб$batch_normalization/ReadVariableOp_1б$batch_normalization_1/AssignNewValueб&batch_normalization_1/AssignNewValue_1б5batch_normalization_1/FusedBatchNormV3/ReadVariableOpб7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1б$batch_normalization_1/ReadVariableOpб&batch_normalization_1/ReadVariableOp_1б$batch_normalization_2/AssignNewValueб&batch_normalization_2/AssignNewValue_1б5batch_normalization_2/FusedBatchNormV3/ReadVariableOpб7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1б$batch_normalization_2/ReadVariableOpб&batch_normalization_2/ReadVariableOp_1бconv2d/BiasAdd/ReadVariableOpбconv2d/Conv2D/ReadVariableOpбconv2d_1/BiasAdd/ReadVariableOpбconv2d_1/Conv2D/ReadVariableOpбconv2d_2/BiasAdd/ReadVariableOpбconv2d_2/Conv2D/ReadVariableOpбdense_3/BiasAdd/ReadVariableOpбdense_3/MatMul/ReadVariableOpбdense_4/BiasAdd/ReadVariableOpбdense_4/MatMul/ReadVariableOpі
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:K*
dtype0Д
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         K*
paddingSAME*
strides
ђ
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0њ
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         Kf
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         Kі
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:K*
dtype0ј
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:K*
dtype0г
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:K*
dtype0░
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:K*
dtype0╗
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d/Relu:activations:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         K:K:K:K:K:*
epsilon%oЃ:*
exponential_avg_factor%
О#<ќ
"batch_normalization/AssignNewValueAssignVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource1batch_normalization/FusedBatchNormV3:batch_mean:04^batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
$batch_normalization/AssignNewValue_1AssignVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource5batch_normalization/FusedBatchNormV3:batch_variance:06^batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(Х
max_pooling2d/MaxPoolMaxPool(batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:         K*
ksize
*
paddingSAME*
strides
ј
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:K2*
dtype0├
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2*
paddingSAME*
strides
ё
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0ў
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         2Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Љ
dropout/dropout/MulMulconv2d_1/Relu:activations:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:         2`
dropout/dropout/ShapeShapeconv2d_1/Relu:activations:0*
T0*
_output_shapes
:ц
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:         2*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>к
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         2Є
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         2Ѕ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:         2ј
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:2*
dtype0њ
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:2*
dtype0░
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:2*
dtype0┤
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:2*
dtype0┼
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3dropout/dropout/Mul_1:z:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         2:2:2:2:2:*
epsilon%oЃ:*
exponential_avg_factor%
О#<ъ
$batch_normalization_1/AssignNewValueAssignVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(е
&batch_normalization_1/AssignNewValue_1AssignVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(║
max_pooling2d_1/MaxPoolMaxPool*batch_normalization_1/FusedBatchNormV3:y:0*/
_output_shapes
:         2*
ksize
*
paddingSAME*
strides
ј
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0┼
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
ё
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ў
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:         ј
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
:*
dtype0њ
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
:*
dtype0░
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0┤
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0К
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d_2/Relu:activations:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<ъ
$batch_normalization_2/AssignNewValueAssignVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource3batch_normalization_2/FusedBatchNormV3:batch_mean:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(е
&batch_normalization_2/AssignNewValue_1AssignVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_2/FusedBatchNormV3:batch_variance:08^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(║
max_pooling2d_2/MaxPoolMaxPool*batch_normalization_2/FusedBatchNormV3:y:0*/
_output_shapes
:         *
ksize
*
paddingSAME*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    љ  Є
flatten/ReshapeReshape max_pooling2d_2/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         љє
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource* 
_output_shapes
:
љђ*
dtype0ї
dense_3/MatMulMatMulflatten/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЃ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ј
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђa
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:         ђ\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?Ї
dropout_1/dropout/MulMuldense_3/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:         ђa
dropout_1/dropout/ShapeShapedense_3/Relu:activations:0*
T0*
_output_shapes
:А
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>┼
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђё
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ђѕ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:         ђЁ
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	ђ
*
dtype0ј
dense_4/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
ѓ
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0ј
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
f
dense_4/SoftmaxSoftmaxdense_4/BiasAdd:output:0*
T0*'
_output_shapes
:         
h
IdentityIdentitydense_4/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         
и	
NoOpNoOp#^batch_normalization/AssignNewValue%^batch_normalization/AssignNewValue_14^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1%^batch_normalization_2/AssignNewValue'^batch_normalization_2/AssignNewValue_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         : : : : : : : : : : : : : : : : : : : : : : 2H
"batch_normalization/AssignNewValue"batch_normalization/AssignNewValue2L
$batch_normalization/AssignNewValue_1$batch_normalization/AssignNewValue_12j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2P
&batch_normalization_1/AssignNewValue_1&batch_normalization_1/AssignNewValue_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12L
$batch_normalization_2/AssignNewValue$batch_normalization_2/AssignNewValue2P
&batch_normalization_2/AssignNewValue_1&batch_normalization_2/AssignNewValue_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
є
└
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_483107

inputs%
readvariableop_resource:2'
readvariableop_1_resource:26
(fusedbatchnormv3_readvariableop_resource:28
*fusedbatchnormv3_readvariableop_1_resource:2
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:2*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:2*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:2*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:2*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           2:2:2:2:2:*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           2н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           2: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           2
 
_user_specified_nameinputs
љE
м

H__inference_sequential_1_layer_call_and_return_conditional_losses_482563
conv2d_input'
conv2d_482504:K
conv2d_482506:K(
batch_normalization_482509:K(
batch_normalization_482511:K(
batch_normalization_482513:K(
batch_normalization_482515:K)
conv2d_1_482519:K2
conv2d_1_482521:2*
batch_normalization_1_482525:2*
batch_normalization_1_482527:2*
batch_normalization_1_482529:2*
batch_normalization_1_482531:2)
conv2d_2_482535:2
conv2d_2_482537:*
batch_normalization_2_482540:*
batch_normalization_2_482542:*
batch_normalization_2_482544:*
batch_normalization_2_482546:"
dense_3_482551:
љђ
dense_3_482553:	ђ!
dense_4_482557:	ђ

dense_4_482559:

identityѕб+batch_normalization/StatefulPartitionedCallб-batch_normalization_1/StatefulPartitionedCallб-batch_normalization_2/StatefulPartitionedCallбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallб conv2d_2/StatefulPartitionedCallбdense_3/StatefulPartitionedCallбdense_4/StatefulPartitionedCallбdropout/StatefulPartitionedCallб!dropout_1/StatefulPartitionedCallщ
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_482504conv2d_482506*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         K*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_481954ѓ
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_482509batch_normalization_482511batch_normalization_482513batch_normalization_482515*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         K*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_481761ч
max_pooling2d/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         K* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_481781Џ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_482519conv2d_1_482521*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_481981З
dropout/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_482207Ј
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0batch_normalization_1_482525batch_normalization_1_482527batch_normalization_1_482529batch_normalization_1_482531*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_481837Ђ
max_pooling2d_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_481857Ю
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_482535conv2d_2_482537*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_482015љ
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_2_482540batch_normalization_2_482542batch_normalization_2_482544batch_normalization_2_482546*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_481913Ђ
max_pooling2d_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_481933▄
flatten/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_482037і
dense_3/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_3_482551dense_3_482553*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_482050њ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_482158Њ
dense_4/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_4_482557dense_4_482559*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_482074w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
┼
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:] Y
/
_output_shapes
:         
&
_user_specified_nameconv2d_input
њ
g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_481857

inputs
identityА
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ђ
ч
B__inference_conv2d_layer_call_and_return_conditional_losses_482926

inputs8
conv2d_readvariableop_resource:K-
biasadd_readvariableop_resource:K
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:K*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         K*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:K*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         KX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         Ki
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         Kw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╠
ю
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_481806

inputs%
readvariableop_resource:2'
readvariableop_1_resource:26
(fusedbatchnormv3_readvariableop_resource:28
*fusedbatchnormv3_readvariableop_1_resource:2
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:2*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:2*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:2*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:2*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           2:2:2:2:2:*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           2░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           2: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           2
 
_user_specified_nameinputs
Ѓ
§
D__inference_conv2d_1_layer_call_and_return_conditional_losses_481981

inputs8
conv2d_readvariableop_resource:K2-
biasadd_readvariableop_resource:2
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:K2*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         2i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         2w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         K: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         K
 
_user_specified_nameinputs
џB
є

H__inference_sequential_1_layer_call_and_return_conditional_losses_482081

inputs'
conv2d_481955:K
conv2d_481957:K(
batch_normalization_481960:K(
batch_normalization_481962:K(
batch_normalization_481964:K(
batch_normalization_481966:K)
conv2d_1_481982:K2
conv2d_1_481984:2*
batch_normalization_1_481994:2*
batch_normalization_1_481996:2*
batch_normalization_1_481998:2*
batch_normalization_1_482000:2)
conv2d_2_482016:2
conv2d_2_482018:*
batch_normalization_2_482021:*
batch_normalization_2_482023:*
batch_normalization_2_482025:*
batch_normalization_2_482027:"
dense_3_482051:
љђ
dense_3_482053:	ђ!
dense_4_482075:	ђ

dense_4_482077:

identityѕб+batch_normalization/StatefulPartitionedCallб-batch_normalization_1/StatefulPartitionedCallб-batch_normalization_2/StatefulPartitionedCallбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallб conv2d_2/StatefulPartitionedCallбdense_3/StatefulPartitionedCallбdense_4/StatefulPartitionedCallз
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_481955conv2d_481957*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         K*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_481954ё
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_481960batch_normalization_481962batch_normalization_481964batch_normalization_481966*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         K*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_481730ч
max_pooling2d/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         K* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_481781Џ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_481982conv2d_1_481984*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_481981С
dropout/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_481992Ѕ
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0batch_normalization_1_481994batch_normalization_1_481996batch_normalization_1_481998batch_normalization_1_482000*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_481806Ђ
max_pooling2d_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_481857Ю
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_482016conv2d_2_482018*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_482015њ
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_2_482021batch_normalization_2_482023batch_normalization_2_482025batch_normalization_2_482027*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_481882Ђ
max_pooling2d_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_481933▄
flatten/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_482037і
dense_3/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_3_482051dense_3_482053*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_482050Я
dropout_1/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_482061І
dense_4/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_4_482075dense_4_482077*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_482074w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
 
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Ш
a
C__inference_dropout_layer_call_and_return_conditional_losses_483033

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         2c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         2:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
ь
ъ
)__inference_conv2d_1_layer_call_fn_483007

inputs!
unknown:K2
	unknown_0:2
identityѕбStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_481981w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         K: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         K
 
_user_specified_nameinputs
▄
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_483255

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         ђ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ђ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
╗
L
0__inference_max_pooling2d_2_layer_call_fn_483204

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_481933Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Б

ш
C__inference_dense_4_layer_call_and_return_conditional_losses_483287

inputs1
matmul_readvariableop_resource:	ђ
-
biasadd_readvariableop_resource:

identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
ћ	
Л
6__inference_batch_normalization_1_layer_call_fn_483058

inputs
unknown:2
	unknown_0:2
	unknown_1:2
	unknown_2:2
identityѕбStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           2*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_481806Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           2
 
_user_specified_nameinputs
љ
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_481781

inputs
identityА
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ё
Й
O__inference_batch_normalization_layer_call_and_return_conditional_losses_481761

inputs%
readvariableop_resource:K'
readvariableop_1_resource:K6
(fusedbatchnormv3_readvariableop_resource:K8
*fusedbatchnormv3_readvariableop_1_resource:K
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:K*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:K*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:K*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:K*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           K:K:K:K:K:*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           Kн
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           K: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           K
 
_user_specified_nameinputs
ё
Й
O__inference_batch_normalization_layer_call_and_return_conditional_losses_482988

inputs%
readvariableop_resource:K'
readvariableop_1_resource:K6
(fusedbatchnormv3_readvariableop_resource:K8
*fusedbatchnormv3_readvariableop_1_resource:K
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:K*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:K*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:K*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:K*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           K:K:K:K:K:*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           Kн
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           K: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           K
 
_user_specified_nameinputs
љ
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_482998

inputs
identityА
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ж
ю
'__inference_conv2d_layer_call_fn_482915

inputs!
unknown:K
	unknown_0:K
identityѕбStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         K*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_481954w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         K`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
љ	
¤
4__inference_batch_normalization_layer_call_fn_482939

inputs
unknown:K
	unknown_0:K
	unknown_1:K
	unknown_2:K
identityѕбStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           K*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_481730Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           K`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           K: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           K
 
_user_specified_nameinputs
и
J
.__inference_max_pooling2d_layer_call_fn_482993

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_481781Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ћ	
Л
6__inference_batch_normalization_2_layer_call_fn_483150

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_481882Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
ч	
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_482158

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ђC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>Д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ђj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         ђZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
с?
§
__inference__traced_save_483400
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partЂ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ѓ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*г
valueбBЪB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHФ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B у
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *-
dtypes#
!2	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*П
_input_shapes╦
╚: :K:K:K:K:K:K:K2:2:2:2:2:2:2::::::
љђ:ђ:	ђ
:
: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:K: 

_output_shapes
:K: 

_output_shapes
:K: 

_output_shapes
:K: 

_output_shapes
:K: 

_output_shapes
:K:,(
&
_output_shapes
:K2: 

_output_shapes
:2: 	

_output_shapes
:2: 


_output_shapes
:2: 

_output_shapes
:2: 

_output_shapes
:2:,(
&
_output_shapes
:2: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
љђ:!

_output_shapes	
:ђ:%!

_output_shapes
:	ђ
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
гB
ї

H__inference_sequential_1_layer_call_and_return_conditional_losses_482501
conv2d_input'
conv2d_482442:K
conv2d_482444:K(
batch_normalization_482447:K(
batch_normalization_482449:K(
batch_normalization_482451:K(
batch_normalization_482453:K)
conv2d_1_482457:K2
conv2d_1_482459:2*
batch_normalization_1_482463:2*
batch_normalization_1_482465:2*
batch_normalization_1_482467:2*
batch_normalization_1_482469:2)
conv2d_2_482473:2
conv2d_2_482475:*
batch_normalization_2_482478:*
batch_normalization_2_482480:*
batch_normalization_2_482482:*
batch_normalization_2_482484:"
dense_3_482489:
љђ
dense_3_482491:	ђ!
dense_4_482495:	ђ

dense_4_482497:

identityѕб+batch_normalization/StatefulPartitionedCallб-batch_normalization_1/StatefulPartitionedCallб-batch_normalization_2/StatefulPartitionedCallбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallб conv2d_2/StatefulPartitionedCallбdense_3/StatefulPartitionedCallбdense_4/StatefulPartitionedCallщ
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_482442conv2d_482444*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         K*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_481954ё
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_482447batch_normalization_482449batch_normalization_482451batch_normalization_482453*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         K*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_481730ч
max_pooling2d/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         K* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_481781Џ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_482457conv2d_1_482459*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_481981С
dropout/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_481992Ѕ
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0batch_normalization_1_482463batch_normalization_1_482465batch_normalization_1_482467batch_normalization_1_482469*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_481806Ђ
max_pooling2d_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_481857Ю
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_482473conv2d_2_482475*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_482015њ
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_2_482478batch_normalization_2_482480batch_normalization_2_482482batch_normalization_2_482484*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_481882Ђ
max_pooling2d_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_481933▄
flatten/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_482037і
dense_3/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_3_482489dense_3_482491*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_482050Я
dropout_1/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_482061І
dense_4/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_4_482495dense_4_482497*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_482074w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
 
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:] Y
/
_output_shapes
:         
&
_user_specified_nameconv2d_input
д

э
C__inference_dense_3_layer_call_and_return_conditional_losses_482050

inputs2
matmul_readvariableop_resource:
љђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
љђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         љ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         љ
 
_user_specified_nameinputs
╩
џ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_481730

inputs%
readvariableop_resource:K'
readvariableop_1_resource:K6
(fusedbatchnormv3_readvariableop_resource:K8
*fusedbatchnormv3_readvariableop_1_resource:K
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:K*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:K*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:K*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:K*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           K:K:K:K:K:*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           K░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           K: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           K
 
_user_specified_nameinputs
А
┬
$__inference_signature_wrapper_482618
conv2d_input!
unknown:K
	unknown_0:K
	unknown_1:K
	unknown_2:K
	unknown_3:K
	unknown_4:K#
	unknown_5:K2
	unknown_6:2
	unknown_7:2
	unknown_8:2
	unknown_9:2

unknown_10:2$

unknown_11:2

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:
љђ

unknown_18:	ђ

unknown_19:	ђ


unknown_20:

identityѕбStatefulPartitionedCall╬
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ **
f%R#
!__inference__wrapped_model_481708o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         
&
_user_specified_nameconv2d_input
╝h
Ё
H__inference_sequential_1_layer_call_and_return_conditional_losses_482804

inputs?
%conv2d_conv2d_readvariableop_resource:K4
&conv2d_biasadd_readvariableop_resource:K9
+batch_normalization_readvariableop_resource:K;
-batch_normalization_readvariableop_1_resource:KJ
<batch_normalization_fusedbatchnormv3_readvariableop_resource:KL
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:KA
'conv2d_1_conv2d_readvariableop_resource:K26
(conv2d_1_biasadd_readvariableop_resource:2;
-batch_normalization_1_readvariableop_resource:2=
/batch_normalization_1_readvariableop_1_resource:2L
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:2N
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:2A
'conv2d_2_conv2d_readvariableop_resource:26
(conv2d_2_biasadd_readvariableop_resource:;
-batch_normalization_2_readvariableop_resource:=
/batch_normalization_2_readvariableop_1_resource:L
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource::
&dense_3_matmul_readvariableop_resource:
љђ6
'dense_3_biasadd_readvariableop_resource:	ђ9
&dense_4_matmul_readvariableop_resource:	ђ
5
'dense_4_biasadd_readvariableop_resource:

identityѕб3batch_normalization/FusedBatchNormV3/ReadVariableOpб5batch_normalization/FusedBatchNormV3/ReadVariableOp_1б"batch_normalization/ReadVariableOpб$batch_normalization/ReadVariableOp_1б5batch_normalization_1/FusedBatchNormV3/ReadVariableOpб7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1б$batch_normalization_1/ReadVariableOpб&batch_normalization_1/ReadVariableOp_1б5batch_normalization_2/FusedBatchNormV3/ReadVariableOpб7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1б$batch_normalization_2/ReadVariableOpб&batch_normalization_2/ReadVariableOp_1бconv2d/BiasAdd/ReadVariableOpбconv2d/Conv2D/ReadVariableOpбconv2d_1/BiasAdd/ReadVariableOpбconv2d_1/Conv2D/ReadVariableOpбconv2d_2/BiasAdd/ReadVariableOpбconv2d_2/Conv2D/ReadVariableOpбdense_3/BiasAdd/ReadVariableOpбdense_3/MatMul/ReadVariableOpбdense_4/BiasAdd/ReadVariableOpбdense_4/MatMul/ReadVariableOpі
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:K*
dtype0Д
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         K*
paddingSAME*
strides
ђ
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0њ
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         Kf
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         Kі
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:K*
dtype0ј
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:K*
dtype0г
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:K*
dtype0░
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:K*
dtype0Г
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d/Relu:activations:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         K:K:K:K:K:*
epsilon%oЃ:*
is_training( Х
max_pooling2d/MaxPoolMaxPool(batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:         K*
ksize
*
paddingSAME*
strides
ј
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:K2*
dtype0├
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2*
paddingSAME*
strides
ё
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0ў
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         2s
dropout/IdentityIdentityconv2d_1/Relu:activations:0*
T0*/
_output_shapes
:         2ј
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:2*
dtype0њ
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:2*
dtype0░
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:2*
dtype0┤
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:2*
dtype0и
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3dropout/Identity:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         2:2:2:2:2:*
epsilon%oЃ:*
is_training( ║
max_pooling2d_1/MaxPoolMaxPool*batch_normalization_1/FusedBatchNormV3:y:0*/
_output_shapes
:         2*
ksize
*
paddingSAME*
strides
ј
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0┼
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
ё
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ў
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:         ј
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
:*
dtype0њ
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
:*
dtype0░
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0┤
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╣
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d_2/Relu:activations:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oЃ:*
is_training( ║
max_pooling2d_2/MaxPoolMaxPool*batch_normalization_2/FusedBatchNormV3:y:0*/
_output_shapes
:         *
ksize
*
paddingSAME*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    љ  Є
flatten/ReshapeReshape max_pooling2d_2/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         љє
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource* 
_output_shapes
:
љђ*
dtype0ї
dense_3/MatMulMatMulflatten/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЃ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ј
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђa
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:         ђm
dropout_1/IdentityIdentitydense_3/Relu:activations:0*
T0*(
_output_shapes
:         ђЁ
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	ђ
*
dtype0ј
dense_4/MatMulMatMuldropout_1/Identity:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
ѓ
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0ј
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
f
dense_4/SoftmaxSoftmaxdense_4/BiasAdd:output:0*
T0*'
_output_shapes
:         
h
IdentityIdentitydense_4/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         
╦
NoOpNoOp4^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         : : : : : : : : : : : : : : : : : : : : : : 2j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
■D
╠

H__inference_sequential_1_layer_call_and_return_conditional_losses_482343

inputs'
conv2d_482284:K
conv2d_482286:K(
batch_normalization_482289:K(
batch_normalization_482291:K(
batch_normalization_482293:K(
batch_normalization_482295:K)
conv2d_1_482299:K2
conv2d_1_482301:2*
batch_normalization_1_482305:2*
batch_normalization_1_482307:2*
batch_normalization_1_482309:2*
batch_normalization_1_482311:2)
conv2d_2_482315:2
conv2d_2_482317:*
batch_normalization_2_482320:*
batch_normalization_2_482322:*
batch_normalization_2_482324:*
batch_normalization_2_482326:"
dense_3_482331:
љђ
dense_3_482333:	ђ!
dense_4_482337:	ђ

dense_4_482339:

identityѕб+batch_normalization/StatefulPartitionedCallб-batch_normalization_1/StatefulPartitionedCallб-batch_normalization_2/StatefulPartitionedCallбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallб conv2d_2/StatefulPartitionedCallбdense_3/StatefulPartitionedCallбdense_4/StatefulPartitionedCallбdropout/StatefulPartitionedCallб!dropout_1/StatefulPartitionedCallз
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_482284conv2d_482286*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         K*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_481954ѓ
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_482289batch_normalization_482291batch_normalization_482293batch_normalization_482295*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         K*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_481761ч
max_pooling2d/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         K* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_481781Џ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_482299conv2d_1_482301*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_481981З
dropout/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_482207Ј
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0batch_normalization_1_482305batch_normalization_1_482307batch_normalization_1_482309batch_normalization_1_482311*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_481837Ђ
max_pooling2d_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_481857Ю
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_482315conv2d_2_482317*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_482015љ
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_2_482320batch_normalization_2_482322batch_normalization_2_482324batch_normalization_2_482326*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_481913Ђ
max_pooling2d_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_481933▄
flatten/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_482037і
dense_3/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_3_482331dense_3_482333*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_482050њ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_482158Њ
dense_4/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_4_482337dense_4_482339*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_482074w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
┼
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Њw
└
"__inference__traced_restore_483500
file_prefix8
assignvariableop_conv2d_kernel:K,
assignvariableop_1_conv2d_bias:K:
,assignvariableop_2_batch_normalization_gamma:K9
+assignvariableop_3_batch_normalization_beta:K@
2assignvariableop_4_batch_normalization_moving_mean:KD
6assignvariableop_5_batch_normalization_moving_variance:K<
"assignvariableop_6_conv2d_1_kernel:K2.
 assignvariableop_7_conv2d_1_bias:2<
.assignvariableop_8_batch_normalization_1_gamma:2;
-assignvariableop_9_batch_normalization_1_beta:2C
5assignvariableop_10_batch_normalization_1_moving_mean:2G
9assignvariableop_11_batch_normalization_1_moving_variance:2=
#assignvariableop_12_conv2d_2_kernel:2/
!assignvariableop_13_conv2d_2_bias:=
/assignvariableop_14_batch_normalization_2_gamma:<
.assignvariableop_15_batch_normalization_2_beta:C
5assignvariableop_16_batch_normalization_2_moving_mean:G
9assignvariableop_17_batch_normalization_2_moving_variance:6
"assignvariableop_18_dense_3_kernel:
љђ/
 assignvariableop_19_dense_3_bias:	ђ5
"assignvariableop_20_dense_4_kernel:	ђ
.
 assignvariableop_21_dense_4_bias:
&
assignvariableop_22_sgd_iter:	 '
assignvariableop_23_sgd_decay: /
%assignvariableop_24_sgd_learning_rate: *
 assignvariableop_25_sgd_momentum: %
assignvariableop_26_total_1: %
assignvariableop_27_count_1: #
assignvariableop_28_total: #
assignvariableop_29_count: 
identity_31ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9є
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*г
valueбBЪB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH«
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ║
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*љ
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_2AssignVariableOp,assignvariableop_2_batch_normalization_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_3AssignVariableOp+assignvariableop_3_batch_normalization_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_4AssignVariableOp2assignvariableop_4_batch_normalization_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_5AssignVariableOp6assignvariableop_5_batch_normalization_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_1_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_1_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_1_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ф
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_1_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv2d_2_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv2d_2_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_14AssignVariableOp/assignvariableop_14_batch_normalization_2_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_15AssignVariableOp.assignvariableop_15_batch_normalization_2_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_16AssignVariableOp5assignvariableop_16_batch_normalization_2_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ф
AssignVariableOp_17AssignVariableOp9assignvariableop_17_batch_normalization_2_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_18AssignVariableOp"assignvariableop_18_dense_3_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_19AssignVariableOp assignvariableop_19_dense_3_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_20AssignVariableOp"assignvariableop_20_dense_4_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_21AssignVariableOp assignvariableop_21_dense_4_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:Ї
AssignVariableOp_22AssignVariableOpassignvariableop_22_sgd_iterIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_23AssignVariableOpassignvariableop_23_sgd_decayIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_24AssignVariableOp%assignvariableop_24_sgd_learning_rateIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_25AssignVariableOp assignvariableop_25_sgd_momentumIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 с
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: л
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_31Identity_31:output:0*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╩
ў
(__inference_dense_3_layer_call_fn_483229

inputs
unknown:
љђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_482050p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         љ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         љ
 
_user_specified_nameinputs
љ
a
(__inference_dropout_layer_call_fn_483028

inputs
identityѕбStatefulPartitionedCall╔
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_482207w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         222
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs
╠
ю
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_481882

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
њ	
Л
6__inference_batch_normalization_2_layer_call_fn_483163

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_481913Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
┐
┼
-__inference_sequential_1_layer_call_fn_482667

inputs!
unknown:K
	unknown_0:K
	unknown_1:K
	unknown_2:K
	unknown_3:K
	unknown_4:K#
	unknown_5:K2
	unknown_6:2
	unknown_7:2
	unknown_8:2
	unknown_9:2

unknown_10:2$

unknown_11:2

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:
љђ

unknown_18:	ђ

unknown_19:	ђ


unknown_20:

identityѕбStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_482081o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Л
╦
-__inference_sequential_1_layer_call_fn_482128
conv2d_input!
unknown:K
	unknown_0:K
	unknown_1:K
	unknown_2:K
	unknown_3:K
	unknown_4:K#
	unknown_5:K2
	unknown_6:2
	unknown_7:2
	unknown_8:2
	unknown_9:2

unknown_10:2$

unknown_11:2

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:
љђ

unknown_18:	ђ

unknown_19:	ђ


unknown_20:

identityѕбStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_482081o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         
&
_user_specified_nameconv2d_input
Ѓ
§
D__inference_conv2d_2_layer_call_and_return_conditional_losses_482015

inputs8
conv2d_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         2
 
_user_specified_nameinputs"┐L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╝
serving_defaultе
M
conv2d_input=
serving_default_conv2d_input:0         ;
dense_40
StatefulPartitionedCall:0         
tensorflow/serving/predict:РТ
­
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
П
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
  _jit_compiled_convolution_op"
_tf_keras_layer
Ж
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses
'axis
	(gamma
)beta
*moving_mean
+moving_variance"
_tf_keras_layer
Ц
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
П
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias
 :_jit_compiled_convolution_op"
_tf_keras_layer
╝
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
A_random_generator"
_tf_keras_layer
Ж
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses
Haxis
	Igamma
Jbeta
Kmoving_mean
Lmoving_variance"
_tf_keras_layer
Ц
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
П
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses

Ykernel
Zbias
 [_jit_compiled_convolution_op"
_tf_keras_layer
Ж
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses
baxis
	cgamma
dbeta
emoving_mean
fmoving_variance"
_tf_keras_layer
Ц
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses

ykernel
zbias"
_tf_keras_layer
Й
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+ђ&call_and_return_all_conditional_losses
Ђ_random_generator"
_tf_keras_layer
├
ѓ	variables
Ѓtrainable_variables
ёregularization_losses
Ё	keras_api
є__call__
+Є&call_and_return_all_conditional_losses
ѕkernel
	Ѕbias"
_tf_keras_layer
╚
0
1
(2
)3
*4
+5
86
97
I8
J9
K10
L11
Y12
Z13
c14
d15
e16
f17
y18
z19
ѕ20
Ѕ21"
trackable_list_wrapper
ў
0
1
(2
)3
84
95
I6
J7
Y8
Z9
c10
d11
y12
z13
ѕ14
Ѕ15"
trackable_list_wrapper
 "
trackable_list_wrapper
¤
іnon_trainable_variables
Іlayers
їmetrics
 Їlayer_regularization_losses
јlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ы
Јtrace_0
љtrace_1
Љtrace_2
њtrace_32 
-__inference_sequential_1_layer_call_fn_482128
-__inference_sequential_1_layer_call_fn_482667
-__inference_sequential_1_layer_call_fn_482716
-__inference_sequential_1_layer_call_fn_482439└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 zЈtrace_0zљtrace_1zЉtrace_2zњtrace_3
я
Њtrace_0
ћtrace_1
Ћtrace_2
ќtrace_32в
H__inference_sequential_1_layer_call_and_return_conditional_losses_482804
H__inference_sequential_1_layer_call_and_return_conditional_losses_482906
H__inference_sequential_1_layer_call_and_return_conditional_losses_482501
H__inference_sequential_1_layer_call_and_return_conditional_losses_482563└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 zЊtrace_0zћtrace_1zЋtrace_2zќtrace_3
ЛB╬
!__inference__wrapped_model_481708conv2d_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
M
	Ќiter

ўdecay
Ўlearning_rate
џmomentum"
	optimizer
-
Џserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
юnon_trainable_variables
Юlayers
ъmetrics
 Ъlayer_regularization_losses
аlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ь
Аtrace_02╬
'__inference_conv2d_layer_call_fn_482915б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zАtrace_0
ѕ
бtrace_02ж
B__inference_conv2d_layer_call_and_return_conditional_losses_482926б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zбtrace_0
':%K2conv2d/kernel
:K2conv2d/bias
┤2▒«
Б▓Ъ
FullArgSpec'
argsџ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
<
(0
)1
*2
+3"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Бnon_trainable_variables
цlayers
Цmetrics
 дlayer_regularization_losses
Дlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
я
еtrace_0
Еtrace_12Б
4__inference_batch_normalization_layer_call_fn_482939
4__inference_batch_normalization_layer_call_fn_482952┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 zеtrace_0zЕtrace_1
ћ
фtrace_0
Фtrace_12┘
O__inference_batch_normalization_layer_call_and_return_conditional_losses_482970
O__inference_batch_normalization_layer_call_and_return_conditional_losses_482988┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 zфtrace_0zФtrace_1
 "
trackable_list_wrapper
':%K2batch_normalization/gamma
&:$K2batch_normalization/beta
/:-K (2batch_normalization/moving_mean
3:1K (2#batch_normalization/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
гnon_trainable_variables
Гlayers
«metrics
 »layer_regularization_losses
░layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
З
▒trace_02Н
.__inference_max_pooling2d_layer_call_fn_482993б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z▒trace_0
Ј
▓trace_02­
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_482998б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z▓trace_0
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
│non_trainable_variables
┤layers
хmetrics
 Хlayer_regularization_losses
иlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
№
Иtrace_02л
)__inference_conv2d_1_layer_call_fn_483007б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zИtrace_0
і
╣trace_02в
D__inference_conv2d_1_layer_call_and_return_conditional_losses_483018б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╣trace_0
):'K22conv2d_1/kernel
:22conv2d_1/bias
┤2▒«
Б▓Ъ
FullArgSpec'
argsџ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
║non_trainable_variables
╗layers
╝metrics
 йlayer_regularization_losses
Йlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
к
┐trace_0
└trace_12І
(__inference_dropout_layer_call_fn_483023
(__inference_dropout_layer_call_fn_483028┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 z┐trace_0z└trace_1
Ч
┴trace_0
┬trace_12┴
C__inference_dropout_layer_call_and_return_conditional_losses_483033
C__inference_dropout_layer_call_and_return_conditional_losses_483045┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 z┴trace_0z┬trace_1
"
_generic_user_object
<
I0
J1
K2
L3"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
├non_trainable_variables
─layers
┼metrics
 кlayer_regularization_losses
Кlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
Р
╚trace_0
╔trace_12Д
6__inference_batch_normalization_1_layer_call_fn_483058
6__inference_batch_normalization_1_layer_call_fn_483071┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 z╚trace_0z╔trace_1
ў
╩trace_0
╦trace_12П
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_483089
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_483107┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 z╩trace_0z╦trace_1
 "
trackable_list_wrapper
):'22batch_normalization_1/gamma
(:&22batch_normalization_1/beta
1:/2 (2!batch_normalization_1/moving_mean
5:32 (2%batch_normalization_1/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╠non_trainable_variables
═layers
╬metrics
 ¤layer_regularization_losses
лlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
Ш
Лtrace_02О
0__inference_max_pooling2d_1_layer_call_fn_483112б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЛtrace_0
Љ
мtrace_02Ы
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_483117б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zмtrace_0
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Мnon_trainable_variables
нlayers
Нmetrics
 оlayer_regularization_losses
Оlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
№
пtrace_02л
)__inference_conv2d_2_layer_call_fn_483126б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zпtrace_0
і
┘trace_02в
D__inference_conv2d_2_layer_call_and_return_conditional_losses_483137б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┘trace_0
):'22conv2d_2/kernel
:2conv2d_2/bias
┤2▒«
Б▓Ъ
FullArgSpec'
argsџ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
<
c0
d1
e2
f3"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┌non_trainable_variables
█layers
▄metrics
 Пlayer_regularization_losses
яlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
Р
▀trace_0
Яtrace_12Д
6__inference_batch_normalization_2_layer_call_fn_483150
6__inference_batch_normalization_2_layer_call_fn_483163┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 z▀trace_0zЯtrace_1
ў
рtrace_0
Рtrace_12П
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_483181
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_483199┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 zрtrace_0zРtrace_1
 "
trackable_list_wrapper
):'2batch_normalization_2/gamma
(:&2batch_normalization_2/beta
1:/ (2!batch_normalization_2/moving_mean
5:3 (2%batch_normalization_2/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
сnon_trainable_variables
Сlayers
тmetrics
 Тlayer_regularization_losses
уlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
Ш
Уtrace_02О
0__inference_max_pooling2d_2_layer_call_fn_483204б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zУtrace_0
Љ
жtrace_02Ы
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_483209б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zжtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Жnon_trainable_variables
вlayers
Вmetrics
 ьlayer_regularization_losses
Ьlayer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
Ь
№trace_02¤
(__inference_flatten_layer_call_fn_483214б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z№trace_0
Ѕ
­trace_02Ж
C__inference_flatten_layer_call_and_return_conditional_losses_483220б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z­trace_0
.
y0
z1"
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ыnon_trainable_variables
Ыlayers
зmetrics
 Зlayer_regularization_losses
шlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
Ь
Шtrace_02¤
(__inference_dense_3_layer_call_fn_483229б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zШtrace_0
Ѕ
эtrace_02Ж
C__inference_dense_3_layer_call_and_return_conditional_losses_483240б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zэtrace_0
": 
љђ2dense_3/kernel
:ђ2dense_3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
┤
Эnon_trainable_variables
щlayers
Щmetrics
 чlayer_regularization_losses
Чlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses"
_generic_user_object
╩
§trace_0
■trace_12Ј
*__inference_dropout_1_layer_call_fn_483245
*__inference_dropout_1_layer_call_fn_483250┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 z§trace_0z■trace_1
ђ
 trace_0
ђtrace_12┼
E__inference_dropout_1_layer_call_and_return_conditional_losses_483255
E__inference_dropout_1_layer_call_and_return_conditional_losses_483267┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 z trace_0zђtrace_1
"
_generic_user_object
0
ѕ0
Ѕ1"
trackable_list_wrapper
0
ѕ0
Ѕ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ђnon_trainable_variables
ѓlayers
Ѓmetrics
 ёlayer_regularization_losses
Ёlayer_metrics
ѓ	variables
Ѓtrainable_variables
ёregularization_losses
є__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
Ь
єtrace_02¤
(__inference_dense_4_layer_call_fn_483276б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zєtrace_0
Ѕ
Єtrace_02Ж
C__inference_dense_4_layer_call_and_return_conditional_losses_483287б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЄtrace_0
!:	ђ
2dense_4/kernel
:
2dense_4/bias
J
*0
+1
K2
L3
e4
f5"
trackable_list_wrapper
є
0
1
2
3
4
5
6
7
	8

9
10
11
12
13"
trackable_list_wrapper
0
ѕ0
Ѕ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЁBѓ
-__inference_sequential_1_layer_call_fn_482128conv2d_input"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
 BЧ
-__inference_sequential_1_layer_call_fn_482667inputs"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
 BЧ
-__inference_sequential_1_layer_call_fn_482716inputs"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЁBѓ
-__inference_sequential_1_layer_call_fn_482439conv2d_input"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
џBЌ
H__inference_sequential_1_layer_call_and_return_conditional_losses_482804inputs"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
џBЌ
H__inference_sequential_1_layer_call_and_return_conditional_losses_482906inputs"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
аBЮ
H__inference_sequential_1_layer_call_and_return_conditional_losses_482501conv2d_input"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
аBЮ
H__inference_sequential_1_layer_call_and_return_conditional_losses_482563conv2d_input"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
лB═
$__inference_signature_wrapper_482618conv2d_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
█Bп
'__inference_conv2d_layer_call_fn_482915inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ШBз
B__inference_conv2d_layer_call_and_return_conditional_losses_482926inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЩBэ
4__inference_batch_normalization_layer_call_fn_482939inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЩBэ
4__inference_batch_normalization_layer_call_fn_482952inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЋBњ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_482970inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЋBњ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_482988inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
РB▀
.__inference_max_pooling2d_layer_call_fn_482993inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
§BЩ
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_482998inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ПB┌
)__inference_conv2d_1_layer_call_fn_483007inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЭBш
D__inference_conv2d_1_layer_call_and_return_conditional_losses_483018inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЬBв
(__inference_dropout_layer_call_fn_483023inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЬBв
(__inference_dropout_layer_call_fn_483028inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЅBє
C__inference_dropout_layer_call_and_return_conditional_losses_483033inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЅBє
C__inference_dropout_layer_call_and_return_conditional_losses_483045inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЧBщ
6__inference_batch_normalization_1_layer_call_fn_483058inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЧBщ
6__inference_batch_normalization_1_layer_call_fn_483071inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЌBћ
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_483089inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЌBћ
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_483107inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
СBр
0__inference_max_pooling2d_1_layer_call_fn_483112inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 BЧ
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_483117inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ПB┌
)__inference_conv2d_2_layer_call_fn_483126inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЭBш
D__inference_conv2d_2_layer_call_and_return_conditional_losses_483137inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЧBщ
6__inference_batch_normalization_2_layer_call_fn_483150inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЧBщ
6__inference_batch_normalization_2_layer_call_fn_483163inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЌBћ
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_483181inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЌBћ
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_483199inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
СBр
0__inference_max_pooling2d_2_layer_call_fn_483204inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 BЧ
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_483209inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▄B┘
(__inference_flatten_layer_call_fn_483214inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
эBЗ
C__inference_flatten_layer_call_and_return_conditional_losses_483220inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▄B┘
(__inference_dense_3_layer_call_fn_483229inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
эBЗ
C__inference_dense_3_layer_call_and_return_conditional_losses_483240inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
­Bь
*__inference_dropout_1_layer_call_fn_483245inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
­Bь
*__inference_dropout_1_layer_call_fn_483250inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ІBѕ
E__inference_dropout_1_layer_call_and_return_conditional_losses_483255inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ІBѕ
E__inference_dropout_1_layer_call_and_return_conditional_losses_483267inputs"┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▄B┘
(__inference_dense_4_layer_call_fn_483276inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
эBЗ
C__inference_dense_4_layer_call_and_return_conditional_losses_483287inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
R
і	variables
І	keras_api

їtotal

Їcount"
_tf_keras_metric
c
ј	variables
Ј	keras_api

љtotal

Љcount
њ
_fn_kwargs"
_tf_keras_metric
0
ї0
Ї1"
trackable_list_wrapper
.
і	variables"
_generic_user_object
:  (2total
:  (2count
0
љ0
Љ1"
trackable_list_wrapper
.
ј	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper▓
!__inference__wrapped_model_481708ї()*+89IJKLYZcdefyzѕЅ=б:
3б0
.і+
conv2d_input         
ф "1ф.
,
dense_4!і
dense_4         
В
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_483089ќIJKLMбJ
Cб@
:і7
inputs+                           2
p 
ф "?б<
5і2
0+                           2
џ В
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_483107ќIJKLMбJ
Cб@
:і7
inputs+                           2
p
ф "?б<
5і2
0+                           2
џ ─
6__inference_batch_normalization_1_layer_call_fn_483058ЅIJKLMбJ
Cб@
:і7
inputs+                           2
p 
ф "2і/+                           2─
6__inference_batch_normalization_1_layer_call_fn_483071ЅIJKLMбJ
Cб@
:і7
inputs+                           2
p
ф "2і/+                           2В
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_483181ќcdefMбJ
Cб@
:і7
inputs+                           
p 
ф "?б<
5і2
0+                           
џ В
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_483199ќcdefMбJ
Cб@
:і7
inputs+                           
p
ф "?б<
5і2
0+                           
џ ─
6__inference_batch_normalization_2_layer_call_fn_483150ЅcdefMбJ
Cб@
:і7
inputs+                           
p 
ф "2і/+                           ─
6__inference_batch_normalization_2_layer_call_fn_483163ЅcdefMбJ
Cб@
:і7
inputs+                           
p
ф "2і/+                           Ж
O__inference_batch_normalization_layer_call_and_return_conditional_losses_482970ќ()*+MбJ
Cб@
:і7
inputs+                           K
p 
ф "?б<
5і2
0+                           K
џ Ж
O__inference_batch_normalization_layer_call_and_return_conditional_losses_482988ќ()*+MбJ
Cб@
:і7
inputs+                           K
p
ф "?б<
5і2
0+                           K
џ ┬
4__inference_batch_normalization_layer_call_fn_482939Ѕ()*+MбJ
Cб@
:і7
inputs+                           K
p 
ф "2і/+                           K┬
4__inference_batch_normalization_layer_call_fn_482952Ѕ()*+MбJ
Cб@
:і7
inputs+                           K
p
ф "2і/+                           K┤
D__inference_conv2d_1_layer_call_and_return_conditional_losses_483018l897б4
-б*
(і%
inputs         K
ф "-б*
#і 
0         2
џ ї
)__inference_conv2d_1_layer_call_fn_483007_897б4
-б*
(і%
inputs         K
ф " і         2┤
D__inference_conv2d_2_layer_call_and_return_conditional_losses_483137lYZ7б4
-б*
(і%
inputs         2
ф "-б*
#і 
0         
џ ї
)__inference_conv2d_2_layer_call_fn_483126_YZ7б4
-б*
(і%
inputs         2
ф " і         ▓
B__inference_conv2d_layer_call_and_return_conditional_losses_482926l7б4
-б*
(і%
inputs         
ф "-б*
#і 
0         K
џ і
'__inference_conv2d_layer_call_fn_482915_7б4
-б*
(і%
inputs         
ф " і         KЦ
C__inference_dense_3_layer_call_and_return_conditional_losses_483240^yz0б-
&б#
!і
inputs         љ
ф "&б#
і
0         ђ
џ }
(__inference_dense_3_layer_call_fn_483229Qyz0б-
&б#
!і
inputs         љ
ф "і         ђд
C__inference_dense_4_layer_call_and_return_conditional_losses_483287_ѕЅ0б-
&б#
!і
inputs         ђ
ф "%б"
і
0         

џ ~
(__inference_dense_4_layer_call_fn_483276RѕЅ0б-
&б#
!і
inputs         ђ
ф "і         
Д
E__inference_dropout_1_layer_call_and_return_conditional_losses_483255^4б1
*б'
!і
inputs         ђ
p 
ф "&б#
і
0         ђ
џ Д
E__inference_dropout_1_layer_call_and_return_conditional_losses_483267^4б1
*б'
!і
inputs         ђ
p
ф "&б#
і
0         ђ
џ 
*__inference_dropout_1_layer_call_fn_483245Q4б1
*б'
!і
inputs         ђ
p 
ф "і         ђ
*__inference_dropout_1_layer_call_fn_483250Q4б1
*б'
!і
inputs         ђ
p
ф "і         ђ│
C__inference_dropout_layer_call_and_return_conditional_losses_483033l;б8
1б.
(і%
inputs         2
p 
ф "-б*
#і 
0         2
џ │
C__inference_dropout_layer_call_and_return_conditional_losses_483045l;б8
1б.
(і%
inputs         2
p
ф "-б*
#і 
0         2
џ І
(__inference_dropout_layer_call_fn_483023_;б8
1б.
(і%
inputs         2
p 
ф " і         2І
(__inference_dropout_layer_call_fn_483028_;б8
1б.
(і%
inputs         2
p
ф " і         2е
C__inference_flatten_layer_call_and_return_conditional_losses_483220a7б4
-б*
(і%
inputs         
ф "&б#
і
0         љ
џ ђ
(__inference_flatten_layer_call_fn_483214T7б4
-б*
(і%
inputs         
ф "і         љЬ
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_483117ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ к
0__inference_max_pooling2d_1_layer_call_fn_483112ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Ь
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_483209ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ к
0__inference_max_pooling2d_2_layer_call_fn_483204ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    В
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_482998ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ─
.__inference_max_pooling2d_layer_call_fn_482993ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Н
H__inference_sequential_1_layer_call_and_return_conditional_losses_482501ѕ()*+89IJKLYZcdefyzѕЅEбB
;б8
.і+
conv2d_input         
p 

 
ф "%б"
і
0         

џ Н
H__inference_sequential_1_layer_call_and_return_conditional_losses_482563ѕ()*+89IJKLYZcdefyzѕЅEбB
;б8
.і+
conv2d_input         
p

 
ф "%б"
і
0         

џ ¤
H__inference_sequential_1_layer_call_and_return_conditional_losses_482804ѓ()*+89IJKLYZcdefyzѕЅ?б<
5б2
(і%
inputs         
p 

 
ф "%б"
і
0         

џ ¤
H__inference_sequential_1_layer_call_and_return_conditional_losses_482906ѓ()*+89IJKLYZcdefyzѕЅ?б<
5б2
(і%
inputs         
p

 
ф "%б"
і
0         

џ г
-__inference_sequential_1_layer_call_fn_482128{()*+89IJKLYZcdefyzѕЅEбB
;б8
.і+
conv2d_input         
p 

 
ф "і         
г
-__inference_sequential_1_layer_call_fn_482439{()*+89IJKLYZcdefyzѕЅEбB
;б8
.і+
conv2d_input         
p

 
ф "і         
д
-__inference_sequential_1_layer_call_fn_482667u()*+89IJKLYZcdefyzѕЅ?б<
5б2
(і%
inputs         
p 

 
ф "і         
д
-__inference_sequential_1_layer_call_fn_482716u()*+89IJKLYZcdefyzѕЅ?б<
5б2
(і%
inputs         
p

 
ф "і         
┼
$__inference_signature_wrapper_482618ю()*+89IJKLYZcdefyzѕЅMбJ
б 
Cф@
>
conv2d_input.і+
conv2d_input         "1ф.
,
dense_4!і
dense_4         
