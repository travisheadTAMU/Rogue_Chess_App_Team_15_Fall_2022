??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle???element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements(
handle???element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??
z
Dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_nameDense_1/kernel
s
"Dense_1/kernel/Read/ReadVariableOpReadVariableOpDense_1/kernel* 
_output_shapes
:
??*
dtype0
q
Dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameDense_1/bias
j
 Dense_1/bias/Read/ReadVariableOpReadVariableOpDense_1/bias*
_output_shapes	
:?*
dtype0
?
Dense_softmax/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*%
shared_nameDense_softmax/kernel

(Dense_softmax/kernel/Read/ReadVariableOpReadVariableOpDense_softmax/kernel* 
_output_shapes
:
??*
dtype0
}
Dense_softmax/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameDense_softmax/bias
v
&Dense_softmax/bias/Read/ReadVariableOpReadVariableOpDense_softmax/bias*
_output_shapes	
:?*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
RNN/simple_rnn_cell_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameRNN/simple_rnn_cell_5/kernel
?
0RNN/simple_rnn_cell_5/kernel/Read/ReadVariableOpReadVariableOpRNN/simple_rnn_cell_5/kernel* 
_output_shapes
:
??*
dtype0
?
&RNN/simple_rnn_cell_5/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*7
shared_name(&RNN/simple_rnn_cell_5/recurrent_kernel
?
:RNN/simple_rnn_cell_5/recurrent_kernel/Read/ReadVariableOpReadVariableOp&RNN/simple_rnn_cell_5/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
RNN/simple_rnn_cell_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameRNN/simple_rnn_cell_5/bias
?
.RNN/simple_rnn_cell_5/bias/Read/ReadVariableOpReadVariableOpRNN/simple_rnn_cell_5/bias*
_output_shapes	
:?*
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
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
?
Adam/Dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/Dense_1/kernel/m
?
)Adam/Dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Dense_1/kernel/m* 
_output_shapes
:
??*
dtype0

Adam/Dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/Dense_1/bias/m
x
'Adam/Dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Dense_1/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/Dense_softmax/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*,
shared_nameAdam/Dense_softmax/kernel/m
?
/Adam/Dense_softmax/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Dense_softmax/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/Dense_softmax/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameAdam/Dense_softmax/bias/m
?
-Adam/Dense_softmax/bias/m/Read/ReadVariableOpReadVariableOpAdam/Dense_softmax/bias/m*
_output_shapes	
:?*
dtype0
?
#Adam/RNN/simple_rnn_cell_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*4
shared_name%#Adam/RNN/simple_rnn_cell_5/kernel/m
?
7Adam/RNN/simple_rnn_cell_5/kernel/m/Read/ReadVariableOpReadVariableOp#Adam/RNN/simple_rnn_cell_5/kernel/m* 
_output_shapes
:
??*
dtype0
?
-Adam/RNN/simple_rnn_cell_5/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*>
shared_name/-Adam/RNN/simple_rnn_cell_5/recurrent_kernel/m
?
AAdam/RNN/simple_rnn_cell_5/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp-Adam/RNN/simple_rnn_cell_5/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
!Adam/RNN/simple_rnn_cell_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/RNN/simple_rnn_cell_5/bias/m
?
5Adam/RNN/simple_rnn_cell_5/bias/m/Read/ReadVariableOpReadVariableOp!Adam/RNN/simple_rnn_cell_5/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/Dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/Dense_1/kernel/v
?
)Adam/Dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Dense_1/kernel/v* 
_output_shapes
:
??*
dtype0

Adam/Dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/Dense_1/bias/v
x
'Adam/Dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Dense_1/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/Dense_softmax/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*,
shared_nameAdam/Dense_softmax/kernel/v
?
/Adam/Dense_softmax/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Dense_softmax/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/Dense_softmax/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameAdam/Dense_softmax/bias/v
?
-Adam/Dense_softmax/bias/v/Read/ReadVariableOpReadVariableOpAdam/Dense_softmax/bias/v*
_output_shapes	
:?*
dtype0
?
#Adam/RNN/simple_rnn_cell_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*4
shared_name%#Adam/RNN/simple_rnn_cell_5/kernel/v
?
7Adam/RNN/simple_rnn_cell_5/kernel/v/Read/ReadVariableOpReadVariableOp#Adam/RNN/simple_rnn_cell_5/kernel/v* 
_output_shapes
:
??*
dtype0
?
-Adam/RNN/simple_rnn_cell_5/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*>
shared_name/-Adam/RNN/simple_rnn_cell_5/recurrent_kernel/v
?
AAdam/RNN/simple_rnn_cell_5/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp-Adam/RNN/simple_rnn_cell_5/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
!Adam/RNN/simple_rnn_cell_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/RNN/simple_rnn_cell_5/bias/v
?
5Adam/RNN/simple_rnn_cell_5/bias/v/Read/ReadVariableOpReadVariableOp!Adam/RNN/simple_rnn_cell_5/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?;
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?;
value?;B?; B?;
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
	variables
trainable_variables
 regularization_losses
!	keras_api
"_random_generator
#__call__
*$&call_and_return_all_conditional_losses* 
?

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses*
?
-iter

.beta_1

/beta_2
	0decay
1learning_ratemmmn%mo&mp2mq3mr4msvtvu%vv&vw2vx3vy4vz*
5
20
31
42
3
4
%5
&6*
5
20
31
42
3
4
%5
&6*
* 
?
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

:serving_default* 
?

2kernel
3recurrent_kernel
4bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?_random_generator
@__call__
*A&call_and_return_all_conditional_losses*
* 

20
31
42*

20
31
42*
* 
?

Bstates
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEDense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEDense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
 regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses* 
* 
* 
* 
d^
VARIABLE_VALUEDense_softmax/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEDense_softmax/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

%0
&1*

%0
&1*
* 
?
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUERNN/simple_rnn_cell_5/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&RNN/simple_rnn_cell_5/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUERNN/simple_rnn_cell_5/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

W0
X1
Y2*
* 
* 
* 

20
31
42*

20
31
42*
* 
?
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
;	variables
<trainable_variables
=regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
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
8
	_total
	`count
a	variables
b	keras_api*
H
	ctotal
	dcount
e
_fn_kwargs
f	variables
g	keras_api*
H
	htotal
	icount
j
_fn_kwargs
k	variables
l	keras_api*
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

_0
`1*

a	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

c0
d1*

f	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

h0
i1*

k	variables*
?{
VARIABLE_VALUEAdam/Dense_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Dense_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/Dense_softmax/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/Dense_softmax/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE#Adam/RNN/simple_rnn_cell_5/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE-Adam/RNN/simple_rnn_cell_5/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/RNN/simple_rnn_cell_5/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/Dense_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Dense_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/Dense_softmax/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/Dense_softmax/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE#Adam/RNN/simple_rnn_cell_5/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE-Adam/RNN/simple_rnn_cell_5/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/RNN/simple_rnn_cell_5/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_RNN_inputPlaceholder*,
_output_shapes
:??????????*
dtype0*!
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_RNN_inputRNN/simple_rnn_cell_5/kernelRNN/simple_rnn_cell_5/bias&RNN/simple_rnn_cell_5/recurrent_kernelDense_1/kernelDense_1/biasDense_softmax/kernelDense_softmax/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? */
f*R(
&__inference_signature_wrapper_34594325
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"Dense_1/kernel/Read/ReadVariableOp Dense_1/bias/Read/ReadVariableOp(Dense_softmax/kernel/Read/ReadVariableOp&Dense_softmax/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp0RNN/simple_rnn_cell_5/kernel/Read/ReadVariableOp:RNN/simple_rnn_cell_5/recurrent_kernel/Read/ReadVariableOp.RNN/simple_rnn_cell_5/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp)Adam/Dense_1/kernel/m/Read/ReadVariableOp'Adam/Dense_1/bias/m/Read/ReadVariableOp/Adam/Dense_softmax/kernel/m/Read/ReadVariableOp-Adam/Dense_softmax/bias/m/Read/ReadVariableOp7Adam/RNN/simple_rnn_cell_5/kernel/m/Read/ReadVariableOpAAdam/RNN/simple_rnn_cell_5/recurrent_kernel/m/Read/ReadVariableOp5Adam/RNN/simple_rnn_cell_5/bias/m/Read/ReadVariableOp)Adam/Dense_1/kernel/v/Read/ReadVariableOp'Adam/Dense_1/bias/v/Read/ReadVariableOp/Adam/Dense_softmax/kernel/v/Read/ReadVariableOp-Adam/Dense_softmax/bias/v/Read/ReadVariableOp7Adam/RNN/simple_rnn_cell_5/kernel/v/Read/ReadVariableOpAAdam/RNN/simple_rnn_cell_5/recurrent_kernel/v/Read/ReadVariableOp5Adam/RNN/simple_rnn_cell_5/bias/v/Read/ReadVariableOpConst*-
Tin&
$2"	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_save_34595089
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameDense_1/kernelDense_1/biasDense_softmax/kernelDense_softmax/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateRNN/simple_rnn_cell_5/kernel&RNN/simple_rnn_cell_5/recurrent_kernelRNN/simple_rnn_cell_5/biastotalcounttotal_1count_1total_2count_2Adam/Dense_1/kernel/mAdam/Dense_1/bias/mAdam/Dense_softmax/kernel/mAdam/Dense_softmax/bias/m#Adam/RNN/simple_rnn_cell_5/kernel/m-Adam/RNN/simple_rnn_cell_5/recurrent_kernel/m!Adam/RNN/simple_rnn_cell_5/bias/mAdam/Dense_1/kernel/vAdam/Dense_1/bias/vAdam/Dense_softmax/kernel/vAdam/Dense_softmax/bias/v#Adam/RNN/simple_rnn_cell_5/kernel/v-Adam/RNN/simple_rnn_cell_5/recurrent_kernel/v!Adam/RNN/simple_rnn_cell_5/bias/v*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference__traced_restore_34595195??
?
?
while_cond_34594518
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_34594518___redundant_placeholder06
2while_while_cond_34594518___redundant_placeholder16
2while_while_cond_34594518___redundant_placeholder26
2while_while_cond_34594518___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_34593337
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_34593337___redundant_placeholder06
2while_while_cond_34593337___redundant_placeholder16
2while_while_cond_34593337___redundant_placeholder26
2while_while_cond_34593337___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
E__inference_Dense_1_layer_call_and_return_conditional_losses_34593563

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????U
TanhTanhBiasAdd:output:0*
T0*,
_output_shapes
:??????????\
IdentityIdentityTanh:y:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?=
?
A__inference_RNN_layer_call_and_return_conditional_losses_34594585
inputs_0D
0simple_rnn_cell_5_matmul_readvariableop_resource:
??@
1simple_rnn_cell_5_biasadd_readvariableop_resource:	?F
2simple_rnn_cell_5_matmul_1_readvariableop_resource:
??
identity??(simple_rnn_cell_5/BiasAdd/ReadVariableOp?'simple_rnn_cell_5/MatMul/ReadVariableOp?)simple_rnn_cell_5/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????l
simple_rnn_cell_5/ReluRelusimple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_34594519*
condR
while_cond_34594518*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_34594734
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_34594734___redundant_placeholder06
2while_while_cond_34594734___redundant_placeholder16
2while_while_cond_34594734___redundant_placeholder26
2while_while_cond_34594734___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
&__inference_RNN_layer_call_fn_34594358

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_RNN_layer_call_and_return_conditional_losses_34593524t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

f
G__inference_dropout_6_layer_call_and_return_conditional_losses_34594868

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
,__inference_dropout_6_layer_call_fn_34594851

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_6_layer_call_and_return_conditional_losses_34593661t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_6_layer_call_fn_34594846

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_6_layer_call_and_return_conditional_losses_34593574e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_34593728
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_34593728___redundant_placeholder06
2while_while_cond_34593728___redundant_placeholder16
2while_while_cond_34593728___redundant_placeholder26
2while_while_cond_34593728___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?4
?
A__inference_RNN_layer_call_and_return_conditional_losses_34593242

inputs.
simple_rnn_cell_5_34593167:
??)
simple_rnn_cell_5_34593169:	?.
simple_rnn_cell_5_34593171:
??
identity??)simple_rnn_cell_5/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
)simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_5_34593167simple_rnn_cell_5_34593169simple_rnn_cell_5_34593171*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_34593166n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_5_34593167simple_rnn_cell_5_34593169simple_rnn_cell_5_34593171*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_34593179*
condR
while_cond_34593178*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:???????????????????z
NoOpNoOp*^simple_rnn_cell_5/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2V
)simple_rnn_cell_5/StatefulPartitionedCall)simple_rnn_cell_5/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
*__inference_Dense_1_layer_call_fn_34594810

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_Dense_1_layer_call_and_return_conditional_losses_34593563t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?:
?
"Sequential_RNN_while_body_34592997:
6sequential_rnn_while_sequential_rnn_while_loop_counter@
<sequential_rnn_while_sequential_rnn_while_maximum_iterations$
 sequential_rnn_while_placeholder&
"sequential_rnn_while_placeholder_1&
"sequential_rnn_while_placeholder_29
5sequential_rnn_while_sequential_rnn_strided_slice_1_0u
qsequential_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_tensorarrayunstack_tensorlistfromtensor_0[
Gsequential_rnn_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:
??W
Hsequential_rnn_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:	?]
Isequential_rnn_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:
??!
sequential_rnn_while_identity#
sequential_rnn_while_identity_1#
sequential_rnn_while_identity_2#
sequential_rnn_while_identity_3#
sequential_rnn_while_identity_47
3sequential_rnn_while_sequential_rnn_strided_slice_1s
osequential_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_tensorarrayunstack_tensorlistfromtensorY
Esequential_rnn_while_simple_rnn_cell_5_matmul_readvariableop_resource:
??U
Fsequential_rnn_while_simple_rnn_cell_5_biasadd_readvariableop_resource:	?[
Gsequential_rnn_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:
????=Sequential/RNN/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?<Sequential/RNN/while/simple_rnn_cell_5/MatMul/ReadVariableOp?>Sequential/RNN/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
FSequential/RNN/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
8Sequential/RNN/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqsequential_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_tensorarrayunstack_tensorlistfromtensor_0 sequential_rnn_while_placeholderOSequential/RNN/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
<Sequential/RNN/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpGsequential_rnn_while_simple_rnn_cell_5_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
-Sequential/RNN/while/simple_rnn_cell_5/MatMulMatMul?Sequential/RNN/while/TensorArrayV2Read/TensorListGetItem:item:0DSequential/RNN/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=Sequential/RNN/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpHsequential_rnn_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
.Sequential/RNN/while/simple_rnn_cell_5/BiasAddBiasAdd7Sequential/RNN/while/simple_rnn_cell_5/MatMul:product:0ESequential/RNN/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
>Sequential/RNN/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpIsequential_rnn_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
/Sequential/RNN/while/simple_rnn_cell_5/MatMul_1MatMul"sequential_rnn_while_placeholder_2FSequential/RNN/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*Sequential/RNN/while/simple_rnn_cell_5/addAddV27Sequential/RNN/while/simple_rnn_cell_5/BiasAdd:output:09Sequential/RNN/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
+Sequential/RNN/while/simple_rnn_cell_5/ReluRelu.Sequential/RNN/while/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
9Sequential/RNN/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"sequential_rnn_while_placeholder_1 sequential_rnn_while_placeholder9Sequential/RNN/while/simple_rnn_cell_5/Relu:activations:0*
_output_shapes
: *
element_dtype0:???\
Sequential/RNN/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
Sequential/RNN/while/addAddV2 sequential_rnn_while_placeholder#Sequential/RNN/while/add/y:output:0*
T0*
_output_shapes
: ^
Sequential/RNN/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
Sequential/RNN/while/add_1AddV26sequential_rnn_while_sequential_rnn_while_loop_counter%Sequential/RNN/while/add_1/y:output:0*
T0*
_output_shapes
: ?
Sequential/RNN/while/IdentityIdentitySequential/RNN/while/add_1:z:0^Sequential/RNN/while/NoOp*
T0*
_output_shapes
: ?
Sequential/RNN/while/Identity_1Identity<sequential_rnn_while_sequential_rnn_while_maximum_iterations^Sequential/RNN/while/NoOp*
T0*
_output_shapes
: ?
Sequential/RNN/while/Identity_2IdentitySequential/RNN/while/add:z:0^Sequential/RNN/while/NoOp*
T0*
_output_shapes
: ?
Sequential/RNN/while/Identity_3IdentityISequential/RNN/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^Sequential/RNN/while/NoOp*
T0*
_output_shapes
: :????
Sequential/RNN/while/Identity_4Identity9Sequential/RNN/while/simple_rnn_cell_5/Relu:activations:0^Sequential/RNN/while/NoOp*
T0*(
_output_shapes
:???????????
Sequential/RNN/while/NoOpNoOp>^Sequential/RNN/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp=^Sequential/RNN/while/simple_rnn_cell_5/MatMul/ReadVariableOp?^Sequential/RNN/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "G
sequential_rnn_while_identity&Sequential/RNN/while/Identity:output:0"K
sequential_rnn_while_identity_1(Sequential/RNN/while/Identity_1:output:0"K
sequential_rnn_while_identity_2(Sequential/RNN/while/Identity_2:output:0"K
sequential_rnn_while_identity_3(Sequential/RNN/while/Identity_3:output:0"K
sequential_rnn_while_identity_4(Sequential/RNN/while/Identity_4:output:0"l
3sequential_rnn_while_sequential_rnn_strided_slice_15sequential_rnn_while_sequential_rnn_strided_slice_1_0"?
Fsequential_rnn_while_simple_rnn_cell_5_biasadd_readvariableop_resourceHsequential_rnn_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"?
Gsequential_rnn_while_simple_rnn_cell_5_matmul_1_readvariableop_resourceIsequential_rnn_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"?
Esequential_rnn_while_simple_rnn_cell_5_matmul_readvariableop_resourceGsequential_rnn_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"?
osequential_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_tensorarrayunstack_tensorlistfromtensorqsequential_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2~
=Sequential/RNN/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp=Sequential/RNN/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2|
<Sequential/RNN/while/simple_rnn_cell_5/MatMul/ReadVariableOp<Sequential/RNN/while/simple_rnn_cell_5/MatMul/ReadVariableOp2?
>Sequential/RNN/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp>Sequential/RNN/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
-__inference_Sequential_layer_call_fn_34593971

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_Sequential_layer_call_and_return_conditional_losses_34593847t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
-__inference_Sequential_layer_call_fn_34593883
	rnn_input
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	rnn_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_Sequential_layer_call_and_return_conditional_losses_34593847t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
,
_output_shapes
:??????????
#
_user_specified_name	RNN_input
?,
?
while_body_34594411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:
??H
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:	?N
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_5_matmul_readvariableop_resource:
??F
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:	?L
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:
????.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_5/MatMul/ReadVariableOp?/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????x
while/simple_rnn_cell_5/ReluReluwhile/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_5/Relu:activations:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity*while/simple_rnn_cell_5/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
-__inference_Sequential_layer_call_fn_34593631
	rnn_input
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	rnn_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_Sequential_layer_call_and_return_conditional_losses_34593614t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
,
_output_shapes
:??????????
#
_user_specified_name	RNN_input
?
?
H__inference_Sequential_layer_call_and_return_conditional_losses_34593927
	rnn_input 
rnn_34593908:
??
rnn_34593910:	? 
rnn_34593912:
??$
dense_1_34593915:
??
dense_1_34593917:	?*
dense_softmax_34593921:
??%
dense_softmax_34593923:	?
identity??Dense_1/StatefulPartitionedCall?%Dense_softmax/StatefulPartitionedCall?RNN/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?
RNN/StatefulPartitionedCallStatefulPartitionedCall	rnn_inputrnn_34593908rnn_34593910rnn_34593912*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_RNN_layer_call_and_return_conditional_losses_34593795?
Dense_1/StatefulPartitionedCallStatefulPartitionedCall$RNN/StatefulPartitionedCall:output:0dense_1_34593915dense_1_34593917*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_Dense_1_layer_call_and_return_conditional_losses_34593563?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(Dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_6_layer_call_and_return_conditional_losses_34593661?
%Dense_softmax/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_softmax_34593921dense_softmax_34593923*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_Dense_softmax_layer_call_and_return_conditional_losses_34593607?
IdentityIdentity.Dense_softmax/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp ^Dense_1/StatefulPartitionedCall&^Dense_softmax/StatefulPartitionedCall^RNN/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : : : 2B
Dense_1/StatefulPartitionedCallDense_1/StatefulPartitionedCall2N
%Dense_softmax/StatefulPartitionedCall%Dense_softmax/StatefulPartitionedCall2:
RNN/StatefulPartitionedCallRNN/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall:W S
,
_output_shapes
:??????????
#
_user_specified_name	RNN_input
?0
?	
RNN_while_body_34594176$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2#
rnn_while_rnn_strided_slice_1_0_
[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0P
<rnn_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:
??L
=rnn_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:	?R
>rnn_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:
??
rnn_while_identity
rnn_while_identity_1
rnn_while_identity_2
rnn_while_identity_3
rnn_while_identity_4!
rnn_while_rnn_strided_slice_1]
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensorN
:rnn_while_simple_rnn_cell_5_matmul_readvariableop_resource:
??J
;rnn_while_simple_rnn_cell_5_biasadd_readvariableop_resource:	?P
<rnn_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:
????2RNN/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?1RNN/while/simple_rnn_cell_5/MatMul/ReadVariableOp?3RNN/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
;RNN/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
-RNN/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0rnn_while_placeholderDRNN/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
1RNN/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp<rnn_while_simple_rnn_cell_5_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
"RNN/while/simple_rnn_cell_5/MatMulMatMul4RNN/while/TensorArrayV2Read/TensorListGetItem:item:09RNN/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
2RNN/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp=rnn_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
#RNN/while/simple_rnn_cell_5/BiasAddBiasAdd,RNN/while/simple_rnn_cell_5/MatMul:product:0:RNN/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3RNN/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp>rnn_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
$RNN/while/simple_rnn_cell_5/MatMul_1MatMulrnn_while_placeholder_2;RNN/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
RNN/while/simple_rnn_cell_5/addAddV2,RNN/while/simple_rnn_cell_5/BiasAdd:output:0.RNN/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
 RNN/while/simple_rnn_cell_5/ReluRelu#RNN/while/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
.RNN/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_while_placeholder_1rnn_while_placeholder.RNN/while/simple_rnn_cell_5/Relu:activations:0*
_output_shapes
: *
element_dtype0:???Q
RNN/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
RNN/while/addAddV2rnn_while_placeholderRNN/while/add/y:output:0*
T0*
_output_shapes
: S
RNN/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
RNN/while/add_1AddV2 rnn_while_rnn_while_loop_counterRNN/while/add_1/y:output:0*
T0*
_output_shapes
: e
RNN/while/IdentityIdentityRNN/while/add_1:z:0^RNN/while/NoOp*
T0*
_output_shapes
: z
RNN/while/Identity_1Identity&rnn_while_rnn_while_maximum_iterations^RNN/while/NoOp*
T0*
_output_shapes
: e
RNN/while/Identity_2IdentityRNN/while/add:z:0^RNN/while/NoOp*
T0*
_output_shapes
: ?
RNN/while/Identity_3Identity>RNN/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^RNN/while/NoOp*
T0*
_output_shapes
: :????
RNN/while/Identity_4Identity.RNN/while/simple_rnn_cell_5/Relu:activations:0^RNN/while/NoOp*
T0*(
_output_shapes
:???????????
RNN/while/NoOpNoOp3^RNN/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^RNN/while/simple_rnn_cell_5/MatMul/ReadVariableOp4^RNN/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "1
rnn_while_identityRNN/while/Identity:output:0"5
rnn_while_identity_1RNN/while/Identity_1:output:0"5
rnn_while_identity_2RNN/while/Identity_2:output:0"5
rnn_while_identity_3RNN/while/Identity_3:output:0"5
rnn_while_identity_4RNN/while/Identity_4:output:0"@
rnn_while_rnn_strided_slice_1rnn_while_rnn_strided_slice_1_0"|
;rnn_while_simple_rnn_cell_5_biasadd_readvariableop_resource=rnn_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"~
<rnn_while_simple_rnn_cell_5_matmul_1_readvariableop_resource>rnn_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"z
:rnn_while_simple_rnn_cell_5_matmul_readvariableop_resource<rnn_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"?
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2h
2RNN/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2RNN/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2f
1RNN/while/simple_rnn_cell_5/MatMul/ReadVariableOp1RNN/while/simple_rnn_cell_5/MatMul/ReadVariableOp2j
3RNN/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp3RNN/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
O__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_34593286

inputs

states2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?
?
while_cond_34594626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_34594626___redundant_placeholder06
2while_while_cond_34594626___redundant_placeholder16
2while_while_cond_34594626___redundant_placeholder26
2while_while_cond_34594626___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?,
?
while_body_34594627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:
??H
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:	?N
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_5_matmul_readvariableop_resource:
??F
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:	?L
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:
????.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_5/MatMul/ReadVariableOp?/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????x
while/simple_rnn_cell_5/ReluReluwhile/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_5/Relu:activations:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity*while/simple_rnn_cell_5/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
RNN_while_cond_34594175$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2&
"rnn_while_less_rnn_strided_slice_1>
:rnn_while_rnn_while_cond_34594175___redundant_placeholder0>
:rnn_while_rnn_while_cond_34594175___redundant_placeholder1>
:rnn_while_rnn_while_cond_34594175___redundant_placeholder2>
:rnn_while_rnn_while_cond_34594175___redundant_placeholder3
rnn_while_identity
r
RNN/while/LessLessrnn_while_placeholder"rnn_while_less_rnn_strided_slice_1*
T0*
_output_shapes
: S
RNN/while/IdentityIdentityRNN/while/Less:z:0*
T0
*
_output_shapes
: "1
rnn_while_identityRNN/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
&__inference_RNN_layer_call_fn_34594347
inputs_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_RNN_layer_call_and_return_conditional_losses_34593401}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_34593178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_34593178___redundant_placeholder06
2while_while_cond_34593178___redundant_placeholder16
2while_while_cond_34593178___redundant_placeholder26
2while_while_cond_34593178___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
H__inference_Sequential_layer_call_and_return_conditional_losses_34593905
	rnn_input 
rnn_34593886:
??
rnn_34593888:	? 
rnn_34593890:
??$
dense_1_34593893:
??
dense_1_34593895:	?*
dense_softmax_34593899:
??%
dense_softmax_34593901:	?
identity??Dense_1/StatefulPartitionedCall?%Dense_softmax/StatefulPartitionedCall?RNN/StatefulPartitionedCall?
RNN/StatefulPartitionedCallStatefulPartitionedCall	rnn_inputrnn_34593886rnn_34593888rnn_34593890*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_RNN_layer_call_and_return_conditional_losses_34593524?
Dense_1/StatefulPartitionedCallStatefulPartitionedCall$RNN/StatefulPartitionedCall:output:0dense_1_34593893dense_1_34593895*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_Dense_1_layer_call_and_return_conditional_losses_34593563?
dropout_6/PartitionedCallPartitionedCall(Dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_6_layer_call_and_return_conditional_losses_34593574?
%Dense_softmax/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_softmax_34593899dense_softmax_34593901*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_Dense_softmax_layer_call_and_return_conditional_losses_34593607?
IdentityIdentity.Dense_softmax/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp ^Dense_1/StatefulPartitionedCall&^Dense_softmax/StatefulPartitionedCall^RNN/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : : : 2B
Dense_1/StatefulPartitionedCallDense_1/StatefulPartitionedCall2N
%Dense_softmax/StatefulPartitionedCall%Dense_softmax/StatefulPartitionedCall2:
RNN/StatefulPartitionedCallRNN/StatefulPartitionedCall:W S
,
_output_shapes
:??????????
#
_user_specified_name	RNN_input
?
?
E__inference_Dense_1_layer_call_and_return_conditional_losses_34594841

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????U
TanhTanhBiasAdd:output:0*
T0*,
_output_shapes
:??????????\
IdentityIdentityTanh:y:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?=
?
A__inference_RNN_layer_call_and_return_conditional_losses_34594801

inputsD
0simple_rnn_cell_5_matmul_readvariableop_resource:
??@
1simple_rnn_cell_5_biasadd_readvariableop_resource:	?F
2simple_rnn_cell_5_matmul_1_readvariableop_resource:
??
identity??(simple_rnn_cell_5/BiasAdd/ReadVariableOp?'simple_rnn_cell_5/MatMul/ReadVariableOp?)simple_rnn_cell_5/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????l
simple_rnn_cell_5/ReluRelusimple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_34594735*
condR
while_cond_34594734*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?,
?
while_body_34594519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:
??H
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:	?N
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_5_matmul_readvariableop_resource:
??F
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:	?L
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:
????.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_5/MatMul/ReadVariableOp?/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????x
while/simple_rnn_cell_5/ReluReluwhile/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_5/Relu:activations:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity*while/simple_rnn_cell_5/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_34593457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_34593457___redundant_placeholder06
2while_while_cond_34593457___redundant_placeholder16
2while_while_cond_34593457___redundant_placeholder26
2while_while_cond_34593457___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
4__inference_simple_rnn_cell_5_layer_call_fn_34594936

inputs
states_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_34593286p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?=
?
A__inference_RNN_layer_call_and_return_conditional_losses_34594693

inputsD
0simple_rnn_cell_5_matmul_readvariableop_resource:
??@
1simple_rnn_cell_5_biasadd_readvariableop_resource:	?F
2simple_rnn_cell_5_matmul_1_readvariableop_resource:
??
identity??(simple_rnn_cell_5/BiasAdd/ReadVariableOp?'simple_rnn_cell_5/MatMul/ReadVariableOp?)simple_rnn_cell_5/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????l
simple_rnn_cell_5/ReluRelusimple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_34594627*
condR
while_cond_34594626*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_6_layer_call_and_return_conditional_losses_34594856

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?=
?
A__inference_RNN_layer_call_and_return_conditional_losses_34593524

inputsD
0simple_rnn_cell_5_matmul_readvariableop_resource:
??@
1simple_rnn_cell_5_biasadd_readvariableop_resource:	?F
2simple_rnn_cell_5_matmul_1_readvariableop_resource:
??
identity??(simple_rnn_cell_5/BiasAdd/ReadVariableOp?'simple_rnn_cell_5/MatMul/ReadVariableOp?)simple_rnn_cell_5/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????l
simple_rnn_cell_5/ReluRelusimple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_34593458*
condR
while_cond_34593457*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
#__inference__wrapped_model_34593118
	rnn_inputS
?sequential_rnn_simple_rnn_cell_5_matmul_readvariableop_resource:
??O
@sequential_rnn_simple_rnn_cell_5_biasadd_readvariableop_resource:	?U
Asequential_rnn_simple_rnn_cell_5_matmul_1_readvariableop_resource:
??H
4sequential_dense_1_tensordot_readvariableop_resource:
??A
2sequential_dense_1_biasadd_readvariableop_resource:	?N
:sequential_dense_softmax_tensordot_readvariableop_resource:
??G
8sequential_dense_softmax_biasadd_readvariableop_resource:	?
identity??)Sequential/Dense_1/BiasAdd/ReadVariableOp?+Sequential/Dense_1/Tensordot/ReadVariableOp?/Sequential/Dense_softmax/BiasAdd/ReadVariableOp?1Sequential/Dense_softmax/Tensordot/ReadVariableOp?7Sequential/RNN/simple_rnn_cell_5/BiasAdd/ReadVariableOp?6Sequential/RNN/simple_rnn_cell_5/MatMul/ReadVariableOp?8Sequential/RNN/simple_rnn_cell_5/MatMul_1/ReadVariableOp?Sequential/RNN/whileM
Sequential/RNN/ShapeShape	rnn_input*
T0*
_output_shapes
:l
"Sequential/RNN/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$Sequential/RNN/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$Sequential/RNN/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Sequential/RNN/strided_sliceStridedSliceSequential/RNN/Shape:output:0+Sequential/RNN/strided_slice/stack:output:0-Sequential/RNN/strided_slice/stack_1:output:0-Sequential/RNN/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Sequential/RNN/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
Sequential/RNN/zeros/packedPack%Sequential/RNN/strided_slice:output:0&Sequential/RNN/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
Sequential/RNN/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
Sequential/RNN/zerosFill$Sequential/RNN/zeros/packed:output:0#Sequential/RNN/zeros/Const:output:0*
T0*(
_output_shapes
:??????????r
Sequential/RNN/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
Sequential/RNN/transpose	Transpose	rnn_input&Sequential/RNN/transpose/perm:output:0*
T0*,
_output_shapes
:??????????b
Sequential/RNN/Shape_1ShapeSequential/RNN/transpose:y:0*
T0*
_output_shapes
:n
$Sequential/RNN/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&Sequential/RNN/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&Sequential/RNN/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Sequential/RNN/strided_slice_1StridedSliceSequential/RNN/Shape_1:output:0-Sequential/RNN/strided_slice_1/stack:output:0/Sequential/RNN/strided_slice_1/stack_1:output:0/Sequential/RNN/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*Sequential/RNN/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Sequential/RNN/TensorArrayV2TensorListReserve3Sequential/RNN/TensorArrayV2/element_shape:output:0'Sequential/RNN/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
DSequential/RNN/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
6Sequential/RNN/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorSequential/RNN/transpose:y:0MSequential/RNN/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???n
$Sequential/RNN/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&Sequential/RNN/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&Sequential/RNN/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Sequential/RNN/strided_slice_2StridedSliceSequential/RNN/transpose:y:0-Sequential/RNN/strided_slice_2/stack:output:0/Sequential/RNN/strided_slice_2/stack_1:output:0/Sequential/RNN/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
6Sequential/RNN/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp?sequential_rnn_simple_rnn_cell_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
'Sequential/RNN/simple_rnn_cell_5/MatMulMatMul'Sequential/RNN/strided_slice_2:output:0>Sequential/RNN/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
7Sequential/RNN/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp@sequential_rnn_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
(Sequential/RNN/simple_rnn_cell_5/BiasAddBiasAdd1Sequential/RNN/simple_rnn_cell_5/MatMul:product:0?Sequential/RNN/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
8Sequential/RNN/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpAsequential_rnn_simple_rnn_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
)Sequential/RNN/simple_rnn_cell_5/MatMul_1MatMulSequential/RNN/zeros:output:0@Sequential/RNN/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$Sequential/RNN/simple_rnn_cell_5/addAddV21Sequential/RNN/simple_rnn_cell_5/BiasAdd:output:03Sequential/RNN/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
%Sequential/RNN/simple_rnn_cell_5/ReluRelu(Sequential/RNN/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:??????????}
,Sequential/RNN/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
Sequential/RNN/TensorArrayV2_1TensorListReserve5Sequential/RNN/TensorArrayV2_1/element_shape:output:0'Sequential/RNN/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???U
Sequential/RNN/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'Sequential/RNN/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????c
!Sequential/RNN/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
Sequential/RNN/whileWhile*Sequential/RNN/while/loop_counter:output:00Sequential/RNN/while/maximum_iterations:output:0Sequential/RNN/time:output:0'Sequential/RNN/TensorArrayV2_1:handle:0Sequential/RNN/zeros:output:0'Sequential/RNN/strided_slice_1:output:0FSequential/RNN/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_rnn_simple_rnn_cell_5_matmul_readvariableop_resource@sequential_rnn_simple_rnn_cell_5_biasadd_readvariableop_resourceAsequential_rnn_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *.
body&R$
"Sequential_RNN_while_body_34592997*.
cond&R$
"Sequential_RNN_while_cond_34592996*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
?Sequential/RNN/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
1Sequential/RNN/TensorArrayV2Stack/TensorListStackTensorListStackSequential/RNN/while:output:3HSequential/RNN/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0w
$Sequential/RNN/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????p
&Sequential/RNN/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&Sequential/RNN/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Sequential/RNN/strided_slice_3StridedSlice:Sequential/RNN/TensorArrayV2Stack/TensorListStack:tensor:0-Sequential/RNN/strided_slice_3/stack:output:0/Sequential/RNN/strided_slice_3/stack_1:output:0/Sequential/RNN/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskt
Sequential/RNN/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
Sequential/RNN/transpose_1	Transpose:Sequential/RNN/TensorArrayV2Stack/TensorListStack:tensor:0(Sequential/RNN/transpose_1/perm:output:0*
T0*,
_output_shapes
:???????????
+Sequential/Dense_1/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0k
!Sequential/Dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!Sequential/Dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
"Sequential/Dense_1/Tensordot/ShapeShapeSequential/RNN/transpose_1:y:0*
T0*
_output_shapes
:l
*Sequential/Dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%Sequential/Dense_1/Tensordot/GatherV2GatherV2+Sequential/Dense_1/Tensordot/Shape:output:0*Sequential/Dense_1/Tensordot/free:output:03Sequential/Dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,Sequential/Dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'Sequential/Dense_1/Tensordot/GatherV2_1GatherV2+Sequential/Dense_1/Tensordot/Shape:output:0*Sequential/Dense_1/Tensordot/axes:output:05Sequential/Dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"Sequential/Dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
!Sequential/Dense_1/Tensordot/ProdProd.Sequential/Dense_1/Tensordot/GatherV2:output:0+Sequential/Dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$Sequential/Dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
#Sequential/Dense_1/Tensordot/Prod_1Prod0Sequential/Dense_1/Tensordot/GatherV2_1:output:0-Sequential/Dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(Sequential/Dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
#Sequential/Dense_1/Tensordot/concatConcatV2*Sequential/Dense_1/Tensordot/free:output:0*Sequential/Dense_1/Tensordot/axes:output:01Sequential/Dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
"Sequential/Dense_1/Tensordot/stackPack*Sequential/Dense_1/Tensordot/Prod:output:0,Sequential/Dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
&Sequential/Dense_1/Tensordot/transpose	TransposeSequential/RNN/transpose_1:y:0,Sequential/Dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
$Sequential/Dense_1/Tensordot/ReshapeReshape*Sequential/Dense_1/Tensordot/transpose:y:0+Sequential/Dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
#Sequential/Dense_1/Tensordot/MatMulMatMul-Sequential/Dense_1/Tensordot/Reshape:output:03Sequential/Dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????o
$Sequential/Dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?l
*Sequential/Dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%Sequential/Dense_1/Tensordot/concat_1ConcatV2.Sequential/Dense_1/Tensordot/GatherV2:output:0-Sequential/Dense_1/Tensordot/Const_2:output:03Sequential/Dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Sequential/Dense_1/TensordotReshape-Sequential/Dense_1/Tensordot/MatMul:product:0.Sequential/Dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
)Sequential/Dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Sequential/Dense_1/BiasAddBiasAdd%Sequential/Dense_1/Tensordot:output:01Sequential/Dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????{
Sequential/Dense_1/TanhTanh#Sequential/Dense_1/BiasAdd:output:0*
T0*,
_output_shapes
:??????????}
Sequential/dropout_6/IdentityIdentitySequential/Dense_1/Tanh:y:0*
T0*,
_output_shapes
:???????????
1Sequential/Dense_softmax/Tensordot/ReadVariableOpReadVariableOp:sequential_dense_softmax_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0q
'Sequential/Dense_softmax/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:x
'Sequential/Dense_softmax/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
(Sequential/Dense_softmax/Tensordot/ShapeShape&Sequential/dropout_6/Identity:output:0*
T0*
_output_shapes
:r
0Sequential/Dense_softmax/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
+Sequential/Dense_softmax/Tensordot/GatherV2GatherV21Sequential/Dense_softmax/Tensordot/Shape:output:00Sequential/Dense_softmax/Tensordot/free:output:09Sequential/Dense_softmax/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:t
2Sequential/Dense_softmax/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
-Sequential/Dense_softmax/Tensordot/GatherV2_1GatherV21Sequential/Dense_softmax/Tensordot/Shape:output:00Sequential/Dense_softmax/Tensordot/axes:output:0;Sequential/Dense_softmax/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
(Sequential/Dense_softmax/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
'Sequential/Dense_softmax/Tensordot/ProdProd4Sequential/Dense_softmax/Tensordot/GatherV2:output:01Sequential/Dense_softmax/Tensordot/Const:output:0*
T0*
_output_shapes
: t
*Sequential/Dense_softmax/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
)Sequential/Dense_softmax/Tensordot/Prod_1Prod6Sequential/Dense_softmax/Tensordot/GatherV2_1:output:03Sequential/Dense_softmax/Tensordot/Const_1:output:0*
T0*
_output_shapes
: p
.Sequential/Dense_softmax/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)Sequential/Dense_softmax/Tensordot/concatConcatV20Sequential/Dense_softmax/Tensordot/free:output:00Sequential/Dense_softmax/Tensordot/axes:output:07Sequential/Dense_softmax/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
(Sequential/Dense_softmax/Tensordot/stackPack0Sequential/Dense_softmax/Tensordot/Prod:output:02Sequential/Dense_softmax/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
,Sequential/Dense_softmax/Tensordot/transpose	Transpose&Sequential/dropout_6/Identity:output:02Sequential/Dense_softmax/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
*Sequential/Dense_softmax/Tensordot/ReshapeReshape0Sequential/Dense_softmax/Tensordot/transpose:y:01Sequential/Dense_softmax/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
)Sequential/Dense_softmax/Tensordot/MatMulMatMul3Sequential/Dense_softmax/Tensordot/Reshape:output:09Sequential/Dense_softmax/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????u
*Sequential/Dense_softmax/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?r
0Sequential/Dense_softmax/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
+Sequential/Dense_softmax/Tensordot/concat_1ConcatV24Sequential/Dense_softmax/Tensordot/GatherV2:output:03Sequential/Dense_softmax/Tensordot/Const_2:output:09Sequential/Dense_softmax/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
"Sequential/Dense_softmax/TensordotReshape3Sequential/Dense_softmax/Tensordot/MatMul:product:04Sequential/Dense_softmax/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
/Sequential/Dense_softmax/BiasAdd/ReadVariableOpReadVariableOp8sequential_dense_softmax_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
 Sequential/Dense_softmax/BiasAddBiasAdd+Sequential/Dense_softmax/Tensordot:output:07Sequential/Dense_softmax/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
 Sequential/Dense_softmax/SoftmaxSoftmax)Sequential/Dense_softmax/BiasAdd:output:0*
T0*,
_output_shapes
:??????????~
IdentityIdentity*Sequential/Dense_softmax/Softmax:softmax:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp*^Sequential/Dense_1/BiasAdd/ReadVariableOp,^Sequential/Dense_1/Tensordot/ReadVariableOp0^Sequential/Dense_softmax/BiasAdd/ReadVariableOp2^Sequential/Dense_softmax/Tensordot/ReadVariableOp8^Sequential/RNN/simple_rnn_cell_5/BiasAdd/ReadVariableOp7^Sequential/RNN/simple_rnn_cell_5/MatMul/ReadVariableOp9^Sequential/RNN/simple_rnn_cell_5/MatMul_1/ReadVariableOp^Sequential/RNN/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : : : 2V
)Sequential/Dense_1/BiasAdd/ReadVariableOp)Sequential/Dense_1/BiasAdd/ReadVariableOp2Z
+Sequential/Dense_1/Tensordot/ReadVariableOp+Sequential/Dense_1/Tensordot/ReadVariableOp2b
/Sequential/Dense_softmax/BiasAdd/ReadVariableOp/Sequential/Dense_softmax/BiasAdd/ReadVariableOp2f
1Sequential/Dense_softmax/Tensordot/ReadVariableOp1Sequential/Dense_softmax/Tensordot/ReadVariableOp2r
7Sequential/RNN/simple_rnn_cell_5/BiasAdd/ReadVariableOp7Sequential/RNN/simple_rnn_cell_5/BiasAdd/ReadVariableOp2p
6Sequential/RNN/simple_rnn_cell_5/MatMul/ReadVariableOp6Sequential/RNN/simple_rnn_cell_5/MatMul/ReadVariableOp2t
8Sequential/RNN/simple_rnn_cell_5/MatMul_1/ReadVariableOp8Sequential/RNN/simple_rnn_cell_5/MatMul_1/ReadVariableOp2,
Sequential/RNN/whileSequential/RNN/while:W S
,
_output_shapes
:??????????
#
_user_specified_name	RNN_input
?=
?
A__inference_RNN_layer_call_and_return_conditional_losses_34593795

inputsD
0simple_rnn_cell_5_matmul_readvariableop_resource:
??@
1simple_rnn_cell_5_biasadd_readvariableop_resource:	?F
2simple_rnn_cell_5_matmul_1_readvariableop_resource:
??
identity??(simple_rnn_cell_5/BiasAdd/ReadVariableOp?'simple_rnn_cell_5/MatMul/ReadVariableOp?)simple_rnn_cell_5/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????l
simple_rnn_cell_5/ReluRelusimple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_34593729*
condR
while_cond_34593728*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_Dense_softmax_layer_call_and_return_conditional_losses_34594908

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????[
SoftmaxSoftmaxBiasAdd:output:0*
T0*,
_output_shapes
:??????????e
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?!
?
while_body_34593338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
"while_simple_rnn_cell_5_34593360_0:
??1
"while_simple_rnn_cell_5_34593362_0:	?6
"while_simple_rnn_cell_5_34593364_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
 while_simple_rnn_cell_5_34593360:
??/
 while_simple_rnn_cell_5_34593362:	?4
 while_simple_rnn_cell_5_34593364:
????/while/simple_rnn_cell_5/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
/while/simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2"while_simple_rnn_cell_5_34593360_0"while_simple_rnn_cell_5_34593362_0"while_simple_rnn_cell_5_34593364_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_34593286?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_5/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity8while/simple_rnn_cell_5/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????~

while/NoOpNoOp0^while/simple_rnn_cell_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"F
 while_simple_rnn_cell_5_34593360"while_simple_rnn_cell_5_34593360_0"F
 while_simple_rnn_cell_5_34593362"while_simple_rnn_cell_5_34593362_0"F
 while_simple_rnn_cell_5_34593364"while_simple_rnn_cell_5_34593364_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2b
/while/simple_rnn_cell_5/StatefulPartitionedCall/while/simple_rnn_cell_5/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_34594410
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_34594410___redundant_placeholder06
2while_while_cond_34594410___redundant_placeholder16
2while_while_cond_34594410___redundant_placeholder26
2while_while_cond_34594410___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
O__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_34594970

inputs
states_02
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?	
?
&__inference_signature_wrapper_34594325
	rnn_input
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	rnn_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__wrapped_model_34593118t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
,
_output_shapes
:??????????
#
_user_specified_name	RNN_input
?
e
G__inference_dropout_6_layer_call_and_return_conditional_losses_34593574

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?,
?
while_body_34593729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:
??H
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:	?N
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_5_matmul_readvariableop_resource:
??F
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:	?L
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:
????.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_5/MatMul/ReadVariableOp?/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????x
while/simple_rnn_cell_5/ReluReluwhile/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_5/Relu:activations:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity*while/simple_rnn_cell_5/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

f
G__inference_dropout_6_layer_call_and_return_conditional_losses_34593661

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_RNN_layer_call_fn_34594336
inputs_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_RNN_layer_call_and_return_conditional_losses_34593242}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?E
?
!__inference__traced_save_34595089
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop3
/savev2_dense_softmax_kernel_read_readvariableop1
-savev2_dense_softmax_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop;
7savev2_rnn_simple_rnn_cell_5_kernel_read_readvariableopE
Asavev2_rnn_simple_rnn_cell_5_recurrent_kernel_read_readvariableop9
5savev2_rnn_simple_rnn_cell_5_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop:
6savev2_adam_dense_softmax_kernel_m_read_readvariableop8
4savev2_adam_dense_softmax_bias_m_read_readvariableopB
>savev2_adam_rnn_simple_rnn_cell_5_kernel_m_read_readvariableopL
Hsavev2_adam_rnn_simple_rnn_cell_5_recurrent_kernel_m_read_readvariableop@
<savev2_adam_rnn_simple_rnn_cell_5_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop:
6savev2_adam_dense_softmax_kernel_v_read_readvariableop8
4savev2_adam_dense_softmax_bias_v_read_readvariableopB
>savev2_adam_rnn_simple_rnn_cell_5_kernel_v_read_readvariableopL
Hsavev2_adam_rnn_simple_rnn_cell_5_recurrent_kernel_v_read_readvariableop@
<savev2_adam_rnn_simple_rnn_cell_5_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*?
value?B?!B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop/savev2_dense_softmax_kernel_read_readvariableop-savev2_dense_softmax_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop7savev2_rnn_simple_rnn_cell_5_kernel_read_readvariableopAsavev2_rnn_simple_rnn_cell_5_recurrent_kernel_read_readvariableop5savev2_rnn_simple_rnn_cell_5_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop6savev2_adam_dense_softmax_kernel_m_read_readvariableop4savev2_adam_dense_softmax_bias_m_read_readvariableop>savev2_adam_rnn_simple_rnn_cell_5_kernel_m_read_readvariableopHsavev2_adam_rnn_simple_rnn_cell_5_recurrent_kernel_m_read_readvariableop<savev2_adam_rnn_simple_rnn_cell_5_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop6savev2_adam_dense_softmax_kernel_v_read_readvariableop4savev2_adam_dense_softmax_bias_v_read_readvariableop>savev2_adam_rnn_simple_rnn_cell_5_kernel_v_read_readvariableopHsavev2_adam_rnn_simple_rnn_cell_5_recurrent_kernel_v_read_readvariableop<savev2_adam_rnn_simple_rnn_cell_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 */
dtypes%
#2!	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??:?:
??:?: : : : : :
??:
??:?: : : : : : :
??:?:
??:?:
??:
??:?:
??:?:
??:?:
??:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :&
"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:! 

_output_shapes	
:?:!

_output_shapes
: 
?
?
H__inference_Sequential_layer_call_and_return_conditional_losses_34593614

inputs 
rnn_34593525:
??
rnn_34593527:	? 
rnn_34593529:
??$
dense_1_34593564:
??
dense_1_34593566:	?*
dense_softmax_34593608:
??%
dense_softmax_34593610:	?
identity??Dense_1/StatefulPartitionedCall?%Dense_softmax/StatefulPartitionedCall?RNN/StatefulPartitionedCall?
RNN/StatefulPartitionedCallStatefulPartitionedCallinputsrnn_34593525rnn_34593527rnn_34593529*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_RNN_layer_call_and_return_conditional_losses_34593524?
Dense_1/StatefulPartitionedCallStatefulPartitionedCall$RNN/StatefulPartitionedCall:output:0dense_1_34593564dense_1_34593566*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_Dense_1_layer_call_and_return_conditional_losses_34593563?
dropout_6/PartitionedCallPartitionedCall(Dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_6_layer_call_and_return_conditional_losses_34593574?
%Dense_softmax/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_softmax_34593608dense_softmax_34593610*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_Dense_softmax_layer_call_and_return_conditional_losses_34593607?
IdentityIdentity.Dense_softmax/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp ^Dense_1/StatefulPartitionedCall&^Dense_softmax/StatefulPartitionedCall^RNN/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : : : 2B
Dense_1/StatefulPartitionedCallDense_1/StatefulPartitionedCall2N
%Dense_softmax/StatefulPartitionedCall%Dense_softmax/StatefulPartitionedCall2:
RNN/StatefulPartitionedCallRNN/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
H__inference_Sequential_layer_call_and_return_conditional_losses_34594134

inputsH
4rnn_simple_rnn_cell_5_matmul_readvariableop_resource:
??D
5rnn_simple_rnn_cell_5_biasadd_readvariableop_resource:	?J
6rnn_simple_rnn_cell_5_matmul_1_readvariableop_resource:
??=
)dense_1_tensordot_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?C
/dense_softmax_tensordot_readvariableop_resource:
??<
-dense_softmax_biasadd_readvariableop_resource:	?
identity??Dense_1/BiasAdd/ReadVariableOp? Dense_1/Tensordot/ReadVariableOp?$Dense_softmax/BiasAdd/ReadVariableOp?&Dense_softmax/Tensordot/ReadVariableOp?,RNN/simple_rnn_cell_5/BiasAdd/ReadVariableOp?+RNN/simple_rnn_cell_5/MatMul/ReadVariableOp?-RNN/simple_rnn_cell_5/MatMul_1/ReadVariableOp?	RNN/while?
	RNN/ShapeShapeinputs*
T0*
_output_shapes
:a
RNN/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
RNN/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
RNN/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
RNN/strided_sliceStridedSliceRNN/Shape:output:0 RNN/strided_slice/stack:output:0"RNN/strided_slice/stack_1:output:0"RNN/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
RNN/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?
RNN/zeros/packedPackRNN/strided_slice:output:0RNN/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
RNN/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    y
	RNN/zerosFillRNN/zeros/packed:output:0RNN/zeros/Const:output:0*
T0*(
_output_shapes
:??????????g
RNN/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
RNN/transpose	TransposeinputsRNN/transpose/perm:output:0*
T0*,
_output_shapes
:??????????L
RNN/Shape_1ShapeRNN/transpose:y:0*
T0*
_output_shapes
:c
RNN/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
RNN/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
RNN/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
RNN/strided_slice_1StridedSliceRNN/Shape_1:output:0"RNN/strided_slice_1/stack:output:0$RNN/strided_slice_1/stack_1:output:0$RNN/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
RNN/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
RNN/TensorArrayV2TensorListReserve(RNN/TensorArrayV2/element_shape:output:0RNN/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
9RNN/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
+RNN/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorRNN/transpose:y:0BRNN/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???c
RNN/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
RNN/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
RNN/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
RNN/strided_slice_2StridedSliceRNN/transpose:y:0"RNN/strided_slice_2/stack:output:0$RNN/strided_slice_2/stack_1:output:0$RNN/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
+RNN/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp4rnn_simple_rnn_cell_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
RNN/simple_rnn_cell_5/MatMulMatMulRNN/strided_slice_2:output:03RNN/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,RNN/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp5rnn_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
RNN/simple_rnn_cell_5/BiasAddBiasAdd&RNN/simple_rnn_cell_5/MatMul:product:04RNN/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-RNN/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp6rnn_simple_rnn_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
RNN/simple_rnn_cell_5/MatMul_1MatMulRNN/zeros:output:05RNN/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
RNN/simple_rnn_cell_5/addAddV2&RNN/simple_rnn_cell_5/BiasAdd:output:0(RNN/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????t
RNN/simple_rnn_cell_5/ReluReluRNN/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:??????????r
!RNN/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
RNN/TensorArrayV2_1TensorListReserve*RNN/TensorArrayV2_1/element_shape:output:0RNN/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???J
RNN/timeConst*
_output_shapes
: *
dtype0*
value	B : g
RNN/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????X
RNN/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
	RNN/whileWhileRNN/while/loop_counter:output:0%RNN/while/maximum_iterations:output:0RNN/time:output:0RNN/TensorArrayV2_1:handle:0RNN/zeros:output:0RNN/strided_slice_1:output:0;RNN/TensorArrayUnstack/TensorListFromTensor:output_handle:04rnn_simple_rnn_cell_5_matmul_readvariableop_resource5rnn_simple_rnn_cell_5_biasadd_readvariableop_resource6rnn_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *#
bodyR
RNN_while_body_34594013*#
condR
RNN_while_cond_34594012*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
4RNN/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
&RNN/TensorArrayV2Stack/TensorListStackTensorListStackRNN/while:output:3=RNN/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0l
RNN/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????e
RNN/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
RNN/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
RNN/strided_slice_3StridedSlice/RNN/TensorArrayV2Stack/TensorListStack:tensor:0"RNN/strided_slice_3/stack:output:0$RNN/strided_slice_3/stack_1:output:0$RNN/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maski
RNN/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
RNN/transpose_1	Transpose/RNN/TensorArrayV2Stack/TensorListStack:tensor:0RNN/transpose_1/perm:output:0*
T0*,
_output_shapes
:???????????
 Dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0`
Dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
Dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Z
Dense_1/Tensordot/ShapeShapeRNN/transpose_1:y:0*
T0*
_output_shapes
:a
Dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dense_1/Tensordot/GatherV2GatherV2 Dense_1/Tensordot/Shape:output:0Dense_1/Tensordot/free:output:0(Dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!Dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dense_1/Tensordot/GatherV2_1GatherV2 Dense_1/Tensordot/Shape:output:0Dense_1/Tensordot/axes:output:0*Dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
Dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Dense_1/Tensordot/ProdProd#Dense_1/Tensordot/GatherV2:output:0 Dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
Dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dense_1/Tensordot/Prod_1Prod%Dense_1/Tensordot/GatherV2_1:output:0"Dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
Dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dense_1/Tensordot/concatConcatV2Dense_1/Tensordot/free:output:0Dense_1/Tensordot/axes:output:0&Dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Dense_1/Tensordot/stackPackDense_1/Tensordot/Prod:output:0!Dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Dense_1/Tensordot/transpose	TransposeRNN/transpose_1:y:0!Dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Dense_1/Tensordot/ReshapeReshapeDense_1/Tensordot/transpose:y:0 Dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dense_1/Tensordot/MatMulMatMul"Dense_1/Tensordot/Reshape:output:0(Dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
Dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?a
Dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dense_1/Tensordot/concat_1ConcatV2#Dense_1/Tensordot/GatherV2:output:0"Dense_1/Tensordot/Const_2:output:0(Dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Dense_1/TensordotReshape"Dense_1/Tensordot/MatMul:product:0#Dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
Dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Dense_1/BiasAddBiasAddDense_1/Tensordot:output:0&Dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????e
Dense_1/TanhTanhDense_1/BiasAdd:output:0*
T0*,
_output_shapes
:??????????g
dropout_6/IdentityIdentityDense_1/Tanh:y:0*
T0*,
_output_shapes
:???????????
&Dense_softmax/Tensordot/ReadVariableOpReadVariableOp/dense_softmax_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0f
Dense_softmax/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:m
Dense_softmax/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       h
Dense_softmax/Tensordot/ShapeShapedropout_6/Identity:output:0*
T0*
_output_shapes
:g
%Dense_softmax/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
 Dense_softmax/Tensordot/GatherV2GatherV2&Dense_softmax/Tensordot/Shape:output:0%Dense_softmax/Tensordot/free:output:0.Dense_softmax/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'Dense_softmax/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
"Dense_softmax/Tensordot/GatherV2_1GatherV2&Dense_softmax/Tensordot/Shape:output:0%Dense_softmax/Tensordot/axes:output:00Dense_softmax/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
Dense_softmax/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Dense_softmax/Tensordot/ProdProd)Dense_softmax/Tensordot/GatherV2:output:0&Dense_softmax/Tensordot/Const:output:0*
T0*
_output_shapes
: i
Dense_softmax/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dense_softmax/Tensordot/Prod_1Prod+Dense_softmax/Tensordot/GatherV2_1:output:0(Dense_softmax/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#Dense_softmax/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dense_softmax/Tensordot/concatConcatV2%Dense_softmax/Tensordot/free:output:0%Dense_softmax/Tensordot/axes:output:0,Dense_softmax/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Dense_softmax/Tensordot/stackPack%Dense_softmax/Tensordot/Prod:output:0'Dense_softmax/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
!Dense_softmax/Tensordot/transpose	Transposedropout_6/Identity:output:0'Dense_softmax/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Dense_softmax/Tensordot/ReshapeReshape%Dense_softmax/Tensordot/transpose:y:0&Dense_softmax/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dense_softmax/Tensordot/MatMulMatMul(Dense_softmax/Tensordot/Reshape:output:0.Dense_softmax/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????j
Dense_softmax/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?g
%Dense_softmax/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
 Dense_softmax/Tensordot/concat_1ConcatV2)Dense_softmax/Tensordot/GatherV2:output:0(Dense_softmax/Tensordot/Const_2:output:0.Dense_softmax/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Dense_softmax/TensordotReshape(Dense_softmax/Tensordot/MatMul:product:0)Dense_softmax/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
$Dense_softmax/BiasAdd/ReadVariableOpReadVariableOp-dense_softmax_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Dense_softmax/BiasAddBiasAdd Dense_softmax/Tensordot:output:0,Dense_softmax/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????w
Dense_softmax/SoftmaxSoftmaxDense_softmax/BiasAdd:output:0*
T0*,
_output_shapes
:??????????s
IdentityIdentityDense_softmax/Softmax:softmax:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^Dense_1/BiasAdd/ReadVariableOp!^Dense_1/Tensordot/ReadVariableOp%^Dense_softmax/BiasAdd/ReadVariableOp'^Dense_softmax/Tensordot/ReadVariableOp-^RNN/simple_rnn_cell_5/BiasAdd/ReadVariableOp,^RNN/simple_rnn_cell_5/MatMul/ReadVariableOp.^RNN/simple_rnn_cell_5/MatMul_1/ReadVariableOp
^RNN/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : : : 2@
Dense_1/BiasAdd/ReadVariableOpDense_1/BiasAdd/ReadVariableOp2D
 Dense_1/Tensordot/ReadVariableOp Dense_1/Tensordot/ReadVariableOp2L
$Dense_softmax/BiasAdd/ReadVariableOp$Dense_softmax/BiasAdd/ReadVariableOp2P
&Dense_softmax/Tensordot/ReadVariableOp&Dense_softmax/Tensordot/ReadVariableOp2\
,RNN/simple_rnn_cell_5/BiasAdd/ReadVariableOp,RNN/simple_rnn_cell_5/BiasAdd/ReadVariableOp2Z
+RNN/simple_rnn_cell_5/MatMul/ReadVariableOp+RNN/simple_rnn_cell_5/MatMul/ReadVariableOp2^
-RNN/simple_rnn_cell_5/MatMul_1/ReadVariableOp-RNN/simple_rnn_cell_5/MatMul_1/ReadVariableOp2
	RNN/while	RNN/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?0
?	
RNN_while_body_34594013$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2#
rnn_while_rnn_strided_slice_1_0_
[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0P
<rnn_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:
??L
=rnn_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:	?R
>rnn_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:
??
rnn_while_identity
rnn_while_identity_1
rnn_while_identity_2
rnn_while_identity_3
rnn_while_identity_4!
rnn_while_rnn_strided_slice_1]
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensorN
:rnn_while_simple_rnn_cell_5_matmul_readvariableop_resource:
??J
;rnn_while_simple_rnn_cell_5_biasadd_readvariableop_resource:	?P
<rnn_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:
????2RNN/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?1RNN/while/simple_rnn_cell_5/MatMul/ReadVariableOp?3RNN/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
;RNN/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
-RNN/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0rnn_while_placeholderDRNN/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
1RNN/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp<rnn_while_simple_rnn_cell_5_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
"RNN/while/simple_rnn_cell_5/MatMulMatMul4RNN/while/TensorArrayV2Read/TensorListGetItem:item:09RNN/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
2RNN/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp=rnn_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
#RNN/while/simple_rnn_cell_5/BiasAddBiasAdd,RNN/while/simple_rnn_cell_5/MatMul:product:0:RNN/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
3RNN/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp>rnn_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
$RNN/while/simple_rnn_cell_5/MatMul_1MatMulrnn_while_placeholder_2;RNN/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
RNN/while/simple_rnn_cell_5/addAddV2,RNN/while/simple_rnn_cell_5/BiasAdd:output:0.RNN/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
 RNN/while/simple_rnn_cell_5/ReluRelu#RNN/while/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
.RNN/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_while_placeholder_1rnn_while_placeholder.RNN/while/simple_rnn_cell_5/Relu:activations:0*
_output_shapes
: *
element_dtype0:???Q
RNN/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
RNN/while/addAddV2rnn_while_placeholderRNN/while/add/y:output:0*
T0*
_output_shapes
: S
RNN/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
RNN/while/add_1AddV2 rnn_while_rnn_while_loop_counterRNN/while/add_1/y:output:0*
T0*
_output_shapes
: e
RNN/while/IdentityIdentityRNN/while/add_1:z:0^RNN/while/NoOp*
T0*
_output_shapes
: z
RNN/while/Identity_1Identity&rnn_while_rnn_while_maximum_iterations^RNN/while/NoOp*
T0*
_output_shapes
: e
RNN/while/Identity_2IdentityRNN/while/add:z:0^RNN/while/NoOp*
T0*
_output_shapes
: ?
RNN/while/Identity_3Identity>RNN/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^RNN/while/NoOp*
T0*
_output_shapes
: :????
RNN/while/Identity_4Identity.RNN/while/simple_rnn_cell_5/Relu:activations:0^RNN/while/NoOp*
T0*(
_output_shapes
:???????????
RNN/while/NoOpNoOp3^RNN/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^RNN/while/simple_rnn_cell_5/MatMul/ReadVariableOp4^RNN/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "1
rnn_while_identityRNN/while/Identity:output:0"5
rnn_while_identity_1RNN/while/Identity_1:output:0"5
rnn_while_identity_2RNN/while/Identity_2:output:0"5
rnn_while_identity_3RNN/while/Identity_3:output:0"5
rnn_while_identity_4RNN/while/Identity_4:output:0"@
rnn_while_rnn_strided_slice_1rnn_while_rnn_strided_slice_1_0"|
;rnn_while_simple_rnn_cell_5_biasadd_readvariableop_resource=rnn_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"~
<rnn_while_simple_rnn_cell_5_matmul_1_readvariableop_resource>rnn_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"z
:rnn_while_simple_rnn_cell_5_matmul_readvariableop_resource<rnn_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"?
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2h
2RNN/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2RNN/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2f
1RNN/while/simple_rnn_cell_5/MatMul/ReadVariableOp1RNN/while/simple_rnn_cell_5/MatMul/ReadVariableOp2j
3RNN/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp3RNN/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
O__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_34593166

inputs

states2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?,
?
while_body_34593458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:
??H
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:	?N
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_5_matmul_readvariableop_resource:
??F
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:	?L
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:
????.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_5/MatMul/ReadVariableOp?/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????x
while/simple_rnn_cell_5/ReluReluwhile/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_5/Relu:activations:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity*while/simple_rnn_cell_5/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
4__inference_simple_rnn_cell_5_layer_call_fn_34594922

inputs
states_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_34593166p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?4
?
A__inference_RNN_layer_call_and_return_conditional_losses_34593401

inputs.
simple_rnn_cell_5_34593326:
??)
simple_rnn_cell_5_34593328:	?.
simple_rnn_cell_5_34593330:
??
identity??)simple_rnn_cell_5/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
)simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_5_34593326simple_rnn_cell_5_34593328simple_rnn_cell_5_34593330*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_34593286n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_5_34593326simple_rnn_cell_5_34593328simple_rnn_cell_5_34593330*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_34593338*
condR
while_cond_34593337*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:???????????????????z
NoOpNoOp*^simple_rnn_cell_5/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2V
)simple_rnn_cell_5/StatefulPartitionedCall)simple_rnn_cell_5/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?!
?
while_body_34593179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
"while_simple_rnn_cell_5_34593201_0:
??1
"while_simple_rnn_cell_5_34593203_0:	?6
"while_simple_rnn_cell_5_34593205_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
 while_simple_rnn_cell_5_34593201:
??/
 while_simple_rnn_cell_5_34593203:	?4
 while_simple_rnn_cell_5_34593205:
????/while/simple_rnn_cell_5/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
/while/simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2"while_simple_rnn_cell_5_34593201_0"while_simple_rnn_cell_5_34593203_0"while_simple_rnn_cell_5_34593205_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_34593166?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_5/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity8while/simple_rnn_cell_5/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????~

while/NoOpNoOp0^while/simple_rnn_cell_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"F
 while_simple_rnn_cell_5_34593201"while_simple_rnn_cell_5_34593201_0"F
 while_simple_rnn_cell_5_34593203"while_simple_rnn_cell_5_34593203_0"F
 while_simple_rnn_cell_5_34593205"while_simple_rnn_cell_5_34593205_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2b
/while/simple_rnn_cell_5/StatefulPartitionedCall/while/simple_rnn_cell_5/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
RNN_while_cond_34594012$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2&
"rnn_while_less_rnn_strided_slice_1>
:rnn_while_rnn_while_cond_34594012___redundant_placeholder0>
:rnn_while_rnn_while_cond_34594012___redundant_placeholder1>
:rnn_while_rnn_while_cond_34594012___redundant_placeholder2>
:rnn_while_rnn_while_cond_34594012___redundant_placeholder3
rnn_while_identity
r
RNN/while/LessLessrnn_while_placeholder"rnn_while_less_rnn_strided_slice_1*
T0*
_output_shapes
: S
RNN/while/IdentityIdentityRNN/while/Less:z:0*
T0
*
_output_shapes
: "1
rnn_while_identityRNN/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?=
?
A__inference_RNN_layer_call_and_return_conditional_losses_34594477
inputs_0D
0simple_rnn_cell_5_matmul_readvariableop_resource:
??@
1simple_rnn_cell_5_biasadd_readvariableop_resource:	?F
2simple_rnn_cell_5_matmul_1_readvariableop_resource:
??
identity??(simple_rnn_cell_5/BiasAdd/ReadVariableOp?'simple_rnn_cell_5/MatMul/ReadVariableOp?)simple_rnn_cell_5/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????l
simple_rnn_cell_5/ReluRelusimple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_34594411*
condR
while_cond_34594410*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
K__inference_Dense_softmax_layer_call_and_return_conditional_losses_34593607

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????[
SoftmaxSoftmaxBiasAdd:output:0*
T0*,
_output_shapes
:??????????e
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
H__inference_Sequential_layer_call_and_return_conditional_losses_34594304

inputsH
4rnn_simple_rnn_cell_5_matmul_readvariableop_resource:
??D
5rnn_simple_rnn_cell_5_biasadd_readvariableop_resource:	?J
6rnn_simple_rnn_cell_5_matmul_1_readvariableop_resource:
??=
)dense_1_tensordot_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?C
/dense_softmax_tensordot_readvariableop_resource:
??<
-dense_softmax_biasadd_readvariableop_resource:	?
identity??Dense_1/BiasAdd/ReadVariableOp? Dense_1/Tensordot/ReadVariableOp?$Dense_softmax/BiasAdd/ReadVariableOp?&Dense_softmax/Tensordot/ReadVariableOp?,RNN/simple_rnn_cell_5/BiasAdd/ReadVariableOp?+RNN/simple_rnn_cell_5/MatMul/ReadVariableOp?-RNN/simple_rnn_cell_5/MatMul_1/ReadVariableOp?	RNN/while?
	RNN/ShapeShapeinputs*
T0*
_output_shapes
:a
RNN/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
RNN/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
RNN/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
RNN/strided_sliceStridedSliceRNN/Shape:output:0 RNN/strided_slice/stack:output:0"RNN/strided_slice/stack_1:output:0"RNN/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
RNN/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?
RNN/zeros/packedPackRNN/strided_slice:output:0RNN/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
RNN/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    y
	RNN/zerosFillRNN/zeros/packed:output:0RNN/zeros/Const:output:0*
T0*(
_output_shapes
:??????????g
RNN/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
RNN/transpose	TransposeinputsRNN/transpose/perm:output:0*
T0*,
_output_shapes
:??????????L
RNN/Shape_1ShapeRNN/transpose:y:0*
T0*
_output_shapes
:c
RNN/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
RNN/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
RNN/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
RNN/strided_slice_1StridedSliceRNN/Shape_1:output:0"RNN/strided_slice_1/stack:output:0$RNN/strided_slice_1/stack_1:output:0$RNN/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
RNN/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
RNN/TensorArrayV2TensorListReserve(RNN/TensorArrayV2/element_shape:output:0RNN/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
9RNN/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
+RNN/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorRNN/transpose:y:0BRNN/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???c
RNN/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
RNN/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
RNN/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
RNN/strided_slice_2StridedSliceRNN/transpose:y:0"RNN/strided_slice_2/stack:output:0$RNN/strided_slice_2/stack_1:output:0$RNN/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
+RNN/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp4rnn_simple_rnn_cell_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
RNN/simple_rnn_cell_5/MatMulMatMulRNN/strided_slice_2:output:03RNN/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,RNN/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp5rnn_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
RNN/simple_rnn_cell_5/BiasAddBiasAdd&RNN/simple_rnn_cell_5/MatMul:product:04RNN/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-RNN/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp6rnn_simple_rnn_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
RNN/simple_rnn_cell_5/MatMul_1MatMulRNN/zeros:output:05RNN/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
RNN/simple_rnn_cell_5/addAddV2&RNN/simple_rnn_cell_5/BiasAdd:output:0(RNN/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????t
RNN/simple_rnn_cell_5/ReluReluRNN/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:??????????r
!RNN/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
RNN/TensorArrayV2_1TensorListReserve*RNN/TensorArrayV2_1/element_shape:output:0RNN/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???J
RNN/timeConst*
_output_shapes
: *
dtype0*
value	B : g
RNN/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????X
RNN/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
	RNN/whileWhileRNN/while/loop_counter:output:0%RNN/while/maximum_iterations:output:0RNN/time:output:0RNN/TensorArrayV2_1:handle:0RNN/zeros:output:0RNN/strided_slice_1:output:0;RNN/TensorArrayUnstack/TensorListFromTensor:output_handle:04rnn_simple_rnn_cell_5_matmul_readvariableop_resource5rnn_simple_rnn_cell_5_biasadd_readvariableop_resource6rnn_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *#
bodyR
RNN_while_body_34594176*#
condR
RNN_while_cond_34594175*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
4RNN/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
&RNN/TensorArrayV2Stack/TensorListStackTensorListStackRNN/while:output:3=RNN/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0l
RNN/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????e
RNN/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
RNN/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
RNN/strided_slice_3StridedSlice/RNN/TensorArrayV2Stack/TensorListStack:tensor:0"RNN/strided_slice_3/stack:output:0$RNN/strided_slice_3/stack_1:output:0$RNN/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maski
RNN/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
RNN/transpose_1	Transpose/RNN/TensorArrayV2Stack/TensorListStack:tensor:0RNN/transpose_1/perm:output:0*
T0*,
_output_shapes
:???????????
 Dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0`
Dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
Dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Z
Dense_1/Tensordot/ShapeShapeRNN/transpose_1:y:0*
T0*
_output_shapes
:a
Dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dense_1/Tensordot/GatherV2GatherV2 Dense_1/Tensordot/Shape:output:0Dense_1/Tensordot/free:output:0(Dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!Dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dense_1/Tensordot/GatherV2_1GatherV2 Dense_1/Tensordot/Shape:output:0Dense_1/Tensordot/axes:output:0*Dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
Dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Dense_1/Tensordot/ProdProd#Dense_1/Tensordot/GatherV2:output:0 Dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
Dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dense_1/Tensordot/Prod_1Prod%Dense_1/Tensordot/GatherV2_1:output:0"Dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
Dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dense_1/Tensordot/concatConcatV2Dense_1/Tensordot/free:output:0Dense_1/Tensordot/axes:output:0&Dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Dense_1/Tensordot/stackPackDense_1/Tensordot/Prod:output:0!Dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
Dense_1/Tensordot/transpose	TransposeRNN/transpose_1:y:0!Dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Dense_1/Tensordot/ReshapeReshapeDense_1/Tensordot/transpose:y:0 Dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dense_1/Tensordot/MatMulMatMul"Dense_1/Tensordot/Reshape:output:0(Dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
Dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?a
Dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dense_1/Tensordot/concat_1ConcatV2#Dense_1/Tensordot/GatherV2:output:0"Dense_1/Tensordot/Const_2:output:0(Dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Dense_1/TensordotReshape"Dense_1/Tensordot/MatMul:product:0#Dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
Dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Dense_1/BiasAddBiasAddDense_1/Tensordot:output:0&Dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????e
Dense_1/TanhTanhDense_1/BiasAdd:output:0*
T0*,
_output_shapes
:??????????\
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_6/dropout/MulMulDense_1/Tanh:y:0 dropout_6/dropout/Const:output:0*
T0*,
_output_shapes
:??????????W
dropout_6/dropout/ShapeShapeDense_1/Tanh:y:0*
T0*
_output_shapes
:?
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0e
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:???????????
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:???????????
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*,
_output_shapes
:???????????
&Dense_softmax/Tensordot/ReadVariableOpReadVariableOp/dense_softmax_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0f
Dense_softmax/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:m
Dense_softmax/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       h
Dense_softmax/Tensordot/ShapeShapedropout_6/dropout/Mul_1:z:0*
T0*
_output_shapes
:g
%Dense_softmax/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
 Dense_softmax/Tensordot/GatherV2GatherV2&Dense_softmax/Tensordot/Shape:output:0%Dense_softmax/Tensordot/free:output:0.Dense_softmax/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'Dense_softmax/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
"Dense_softmax/Tensordot/GatherV2_1GatherV2&Dense_softmax/Tensordot/Shape:output:0%Dense_softmax/Tensordot/axes:output:00Dense_softmax/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
Dense_softmax/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
Dense_softmax/Tensordot/ProdProd)Dense_softmax/Tensordot/GatherV2:output:0&Dense_softmax/Tensordot/Const:output:0*
T0*
_output_shapes
: i
Dense_softmax/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dense_softmax/Tensordot/Prod_1Prod+Dense_softmax/Tensordot/GatherV2_1:output:0(Dense_softmax/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#Dense_softmax/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Dense_softmax/Tensordot/concatConcatV2%Dense_softmax/Tensordot/free:output:0%Dense_softmax/Tensordot/axes:output:0,Dense_softmax/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
Dense_softmax/Tensordot/stackPack%Dense_softmax/Tensordot/Prod:output:0'Dense_softmax/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
!Dense_softmax/Tensordot/transpose	Transposedropout_6/dropout/Mul_1:z:0'Dense_softmax/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Dense_softmax/Tensordot/ReshapeReshape%Dense_softmax/Tensordot/transpose:y:0&Dense_softmax/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Dense_softmax/Tensordot/MatMulMatMul(Dense_softmax/Tensordot/Reshape:output:0.Dense_softmax/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????j
Dense_softmax/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?g
%Dense_softmax/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
 Dense_softmax/Tensordot/concat_1ConcatV2)Dense_softmax/Tensordot/GatherV2:output:0(Dense_softmax/Tensordot/Const_2:output:0.Dense_softmax/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
Dense_softmax/TensordotReshape(Dense_softmax/Tensordot/MatMul:product:0)Dense_softmax/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
$Dense_softmax/BiasAdd/ReadVariableOpReadVariableOp-dense_softmax_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Dense_softmax/BiasAddBiasAdd Dense_softmax/Tensordot:output:0,Dense_softmax/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????w
Dense_softmax/SoftmaxSoftmaxDense_softmax/BiasAdd:output:0*
T0*,
_output_shapes
:??????????s
IdentityIdentityDense_softmax/Softmax:softmax:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^Dense_1/BiasAdd/ReadVariableOp!^Dense_1/Tensordot/ReadVariableOp%^Dense_softmax/BiasAdd/ReadVariableOp'^Dense_softmax/Tensordot/ReadVariableOp-^RNN/simple_rnn_cell_5/BiasAdd/ReadVariableOp,^RNN/simple_rnn_cell_5/MatMul/ReadVariableOp.^RNN/simple_rnn_cell_5/MatMul_1/ReadVariableOp
^RNN/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : : : 2@
Dense_1/BiasAdd/ReadVariableOpDense_1/BiasAdd/ReadVariableOp2D
 Dense_1/Tensordot/ReadVariableOp Dense_1/Tensordot/ReadVariableOp2L
$Dense_softmax/BiasAdd/ReadVariableOp$Dense_softmax/BiasAdd/ReadVariableOp2P
&Dense_softmax/Tensordot/ReadVariableOp&Dense_softmax/Tensordot/ReadVariableOp2\
,RNN/simple_rnn_cell_5/BiasAdd/ReadVariableOp,RNN/simple_rnn_cell_5/BiasAdd/ReadVariableOp2Z
+RNN/simple_rnn_cell_5/MatMul/ReadVariableOp+RNN/simple_rnn_cell_5/MatMul/ReadVariableOp2^
-RNN/simple_rnn_cell_5/MatMul_1/ReadVariableOp-RNN/simple_rnn_cell_5/MatMul_1/ReadVariableOp2
	RNN/while	RNN/while:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_RNN_layer_call_fn_34594369

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_RNN_layer_call_and_return_conditional_losses_34593795t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
$__inference__traced_restore_34595195
file_prefix3
assignvariableop_dense_1_kernel:
??.
assignvariableop_1_dense_1_bias:	?;
'assignvariableop_2_dense_softmax_kernel:
??4
%assignvariableop_3_dense_softmax_bias:	?&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: C
/assignvariableop_9_rnn_simple_rnn_cell_5_kernel:
??N
:assignvariableop_10_rnn_simple_rnn_cell_5_recurrent_kernel:
??=
.assignvariableop_11_rnn_simple_rnn_cell_5_bias:	?#
assignvariableop_12_total: #
assignvariableop_13_count: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: %
assignvariableop_16_total_2: %
assignvariableop_17_count_2: =
)assignvariableop_18_adam_dense_1_kernel_m:
??6
'assignvariableop_19_adam_dense_1_bias_m:	?C
/assignvariableop_20_adam_dense_softmax_kernel_m:
??<
-assignvariableop_21_adam_dense_softmax_bias_m:	?K
7assignvariableop_22_adam_rnn_simple_rnn_cell_5_kernel_m:
??U
Aassignvariableop_23_adam_rnn_simple_rnn_cell_5_recurrent_kernel_m:
??D
5assignvariableop_24_adam_rnn_simple_rnn_cell_5_bias_m:	?=
)assignvariableop_25_adam_dense_1_kernel_v:
??6
'assignvariableop_26_adam_dense_1_bias_v:	?C
/assignvariableop_27_adam_dense_softmax_kernel_v:
??<
-assignvariableop_28_adam_dense_softmax_bias_v:	?K
7assignvariableop_29_adam_rnn_simple_rnn_cell_5_kernel_v:
??U
Aassignvariableop_30_adam_rnn_simple_rnn_cell_5_recurrent_kernel_v:
??D
5assignvariableop_31_adam_rnn_simple_rnn_cell_5_bias_v:	?
identity_33??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*?
value?B?!B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::*/
dtypes%
#2!	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp'assignvariableop_2_dense_softmax_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp%assignvariableop_3_dense_softmax_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_rnn_simple_rnn_cell_5_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp:assignvariableop_10_rnn_simple_rnn_cell_5_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp.assignvariableop_11_rnn_simple_rnn_cell_5_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_1_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_dense_1_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp/assignvariableop_20_adam_dense_softmax_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp-assignvariableop_21_adam_dense_softmax_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_adam_rnn_simple_rnn_cell_5_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpAassignvariableop_23_adam_rnn_simple_rnn_cell_5_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp5assignvariableop_24_adam_rnn_simple_rnn_cell_5_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_1_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_1_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp/assignvariableop_27_adam_dense_softmax_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp-assignvariableop_28_adam_dense_softmax_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp7assignvariableop_29_adam_rnn_simple_rnn_cell_5_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOpAassignvariableop_30_adam_rnn_simple_rnn_cell_5_recurrent_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp5assignvariableop_31_adam_rnn_simple_rnn_cell_5_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_32Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_33IdentityIdentity_32:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_33Identity_33:output:0*U
_input_shapesD
B: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312(
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
?
?
0__inference_Dense_softmax_layer_call_fn_34594877

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_Dense_softmax_layer_call_and_return_conditional_losses_34593607t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?,
?
while_body_34594735
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:
??H
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:	?N
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_5_matmul_readvariableop_resource:
??F
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:	?L
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:
????.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp?-while/simple_rnn_cell_5/MatMul/ReadVariableOp?/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????x
while/simple_rnn_cell_5/ReluReluwhile/simple_rnn_cell_5/add:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder*while/simple_rnn_cell_5/Relu:activations:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity*while/simple_rnn_cell_5/Relu:activations:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
-__inference_Sequential_layer_call_fn_34593952

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_Sequential_layer_call_and_return_conditional_losses_34593614t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
O__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_34594953

inputs
states_02
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????H
ReluReluadd:z:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????d

Identity_1IdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?

?
"Sequential_RNN_while_cond_34592996:
6sequential_rnn_while_sequential_rnn_while_loop_counter@
<sequential_rnn_while_sequential_rnn_while_maximum_iterations$
 sequential_rnn_while_placeholder&
"sequential_rnn_while_placeholder_1&
"sequential_rnn_while_placeholder_2<
8sequential_rnn_while_less_sequential_rnn_strided_slice_1T
Psequential_rnn_while_sequential_rnn_while_cond_34592996___redundant_placeholder0T
Psequential_rnn_while_sequential_rnn_while_cond_34592996___redundant_placeholder1T
Psequential_rnn_while_sequential_rnn_while_cond_34592996___redundant_placeholder2T
Psequential_rnn_while_sequential_rnn_while_cond_34592996___redundant_placeholder3!
sequential_rnn_while_identity
?
Sequential/RNN/while/LessLess sequential_rnn_while_placeholder8sequential_rnn_while_less_sequential_rnn_strided_slice_1*
T0*
_output_shapes
: i
Sequential/RNN/while/IdentityIdentitySequential/RNN/while/Less:z:0*
T0
*
_output_shapes
: "G
sequential_rnn_while_identity&Sequential/RNN/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
H__inference_Sequential_layer_call_and_return_conditional_losses_34593847

inputs 
rnn_34593828:
??
rnn_34593830:	? 
rnn_34593832:
??$
dense_1_34593835:
??
dense_1_34593837:	?*
dense_softmax_34593841:
??%
dense_softmax_34593843:	?
identity??Dense_1/StatefulPartitionedCall?%Dense_softmax/StatefulPartitionedCall?RNN/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?
RNN/StatefulPartitionedCallStatefulPartitionedCallinputsrnn_34593828rnn_34593830rnn_34593832*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_RNN_layer_call_and_return_conditional_losses_34593795?
Dense_1/StatefulPartitionedCallStatefulPartitionedCall$RNN/StatefulPartitionedCall:output:0dense_1_34593835dense_1_34593837*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_Dense_1_layer_call_and_return_conditional_losses_34593563?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(Dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_6_layer_call_and_return_conditional_losses_34593661?
%Dense_softmax/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_softmax_34593841dense_softmax_34593843*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_Dense_softmax_layer_call_and_return_conditional_losses_34593607?
IdentityIdentity.Dense_softmax/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp ^Dense_1/StatefulPartitionedCall&^Dense_softmax/StatefulPartitionedCall^RNN/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : : : 2B
Dense_1/StatefulPartitionedCallDense_1/StatefulPartitionedCall2N
%Dense_softmax/StatefulPartitionedCall%Dense_softmax/StatefulPartitionedCall2:
RNN/StatefulPartitionedCallRNN/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
D
	RNN_input7
serving_default_RNN_input:0??????????F
Dense_softmax5
StatefulPartitionedCall:0??????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
 regularization_losses
!	keras_api
"_random_generator
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
?

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
?
-iter

.beta_1

/beta_2
	0decay
1learning_ratemmmn%mo&mp2mq3mr4msvtvu%vv&vw2vx3vy4vz"
	optimizer
Q
20
31
42
3
4
%5
&6"
trackable_list_wrapper
Q
20
31
42
3
4
%5
&6"
trackable_list_wrapper
 "
trackable_list_wrapper
?
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_Sequential_layer_call_fn_34593631
-__inference_Sequential_layer_call_fn_34593952
-__inference_Sequential_layer_call_fn_34593971
-__inference_Sequential_layer_call_fn_34593883?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_Sequential_layer_call_and_return_conditional_losses_34594134
H__inference_Sequential_layer_call_and_return_conditional_losses_34594304
H__inference_Sequential_layer_call_and_return_conditional_losses_34593905
H__inference_Sequential_layer_call_and_return_conditional_losses_34593927?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
#__inference__wrapped_model_34593118	RNN_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
:serving_default"
signature_map
?

2kernel
3recurrent_kernel
4bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?_random_generator
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
20
31
42"
trackable_list_wrapper
5
20
31
42"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Bstates
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
&__inference_RNN_layer_call_fn_34594336
&__inference_RNN_layer_call_fn_34594347
&__inference_RNN_layer_call_fn_34594358
&__inference_RNN_layer_call_fn_34594369?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_RNN_layer_call_and_return_conditional_losses_34594477
A__inference_RNN_layer_call_and_return_conditional_losses_34594585
A__inference_RNN_layer_call_and_return_conditional_losses_34594693
A__inference_RNN_layer_call_and_return_conditional_losses_34594801?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
": 
??2Dense_1/kernel
:?2Dense_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_Dense_1_layer_call_fn_34594810?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_Dense_1_layer_call_and_return_conditional_losses_34594841?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
 regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
,__inference_dropout_6_layer_call_fn_34594846
,__inference_dropout_6_layer_call_fn_34594851?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_6_layer_call_and_return_conditional_losses_34594856
G__inference_dropout_6_layer_call_and_return_conditional_losses_34594868?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
(:&
??2Dense_softmax/kernel
!:?2Dense_softmax/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
?2?
0__inference_Dense_softmax_layer_call_fn_34594877?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_Dense_softmax_layer_call_and_return_conditional_losses_34594908?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.
??2RNN/simple_rnn_cell_5/kernel
::8
??2&RNN/simple_rnn_cell_5/recurrent_kernel
):'?2RNN/simple_rnn_cell_5/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
5
W0
X1
Y2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
&__inference_signature_wrapper_34594325	RNN_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
5
20
31
42"
trackable_list_wrapper
5
20
31
42"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
;	variables
<trainable_variables
=regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
4__inference_simple_rnn_cell_5_layer_call_fn_34594922
4__inference_simple_rnn_cell_5_layer_call_fn_34594936?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
O__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_34594953
O__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_34594970?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
N
	_total
	`count
a	variables
b	keras_api"
_tf_keras_metric
^
	ctotal
	dcount
e
_fn_kwargs
f	variables
g	keras_api"
_tf_keras_metric
^
	htotal
	icount
j
_fn_kwargs
k	variables
l	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
_0
`1"
trackable_list_wrapper
-
a	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
c0
d1"
trackable_list_wrapper
-
f	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
h0
i1"
trackable_list_wrapper
-
k	variables"
_generic_user_object
':%
??2Adam/Dense_1/kernel/m
 :?2Adam/Dense_1/bias/m
-:+
??2Adam/Dense_softmax/kernel/m
&:$?2Adam/Dense_softmax/bias/m
5:3
??2#Adam/RNN/simple_rnn_cell_5/kernel/m
?:=
??2-Adam/RNN/simple_rnn_cell_5/recurrent_kernel/m
.:,?2!Adam/RNN/simple_rnn_cell_5/bias/m
':%
??2Adam/Dense_1/kernel/v
 :?2Adam/Dense_1/bias/v
-:+
??2Adam/Dense_softmax/kernel/v
&:$?2Adam/Dense_softmax/bias/v
5:3
??2#Adam/RNN/simple_rnn_cell_5/kernel/v
?:=
??2-Adam/RNN/simple_rnn_cell_5/recurrent_kernel/v
.:,?2!Adam/RNN/simple_rnn_cell_5/bias/v?
E__inference_Dense_1_layer_call_and_return_conditional_losses_34594841f4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
*__inference_Dense_1_layer_call_fn_34594810Y4?1
*?'
%?"
inputs??????????
? "????????????
K__inference_Dense_softmax_layer_call_and_return_conditional_losses_34594908f%&4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
0__inference_Dense_softmax_layer_call_fn_34594877Y%&4?1
*?'
%?"
inputs??????????
? "????????????
A__inference_RNN_layer_call_and_return_conditional_losses_34594477?243P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "3?0
)?&
0???????????????????
? ?
A__inference_RNN_layer_call_and_return_conditional_losses_34594585?243P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "3?0
)?&
0???????????????????
? ?
A__inference_RNN_layer_call_and_return_conditional_losses_34594693s243@?=
6?3
%?"
inputs??????????

 
p 

 
? "*?'
 ?
0??????????
? ?
A__inference_RNN_layer_call_and_return_conditional_losses_34594801s243@?=
6?3
%?"
inputs??????????

 
p

 
? "*?'
 ?
0??????????
? ?
&__inference_RNN_layer_call_fn_34594336243P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "&?#????????????????????
&__inference_RNN_layer_call_fn_34594347243P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "&?#????????????????????
&__inference_RNN_layer_call_fn_34594358f243@?=
6?3
%?"
inputs??????????

 
p 

 
? "????????????
&__inference_RNN_layer_call_fn_34594369f243@?=
6?3
%?"
inputs??????????

 
p

 
? "????????????
H__inference_Sequential_layer_call_and_return_conditional_losses_34593905v243%&??<
5?2
(?%
	RNN_input??????????
p 

 
? "*?'
 ?
0??????????
? ?
H__inference_Sequential_layer_call_and_return_conditional_losses_34593927v243%&??<
5?2
(?%
	RNN_input??????????
p

 
? "*?'
 ?
0??????????
? ?
H__inference_Sequential_layer_call_and_return_conditional_losses_34594134s243%&<?9
2?/
%?"
inputs??????????
p 

 
? "*?'
 ?
0??????????
? ?
H__inference_Sequential_layer_call_and_return_conditional_losses_34594304s243%&<?9
2?/
%?"
inputs??????????
p

 
? "*?'
 ?
0??????????
? ?
-__inference_Sequential_layer_call_fn_34593631i243%&??<
5?2
(?%
	RNN_input??????????
p 

 
? "????????????
-__inference_Sequential_layer_call_fn_34593883i243%&??<
5?2
(?%
	RNN_input??????????
p

 
? "????????????
-__inference_Sequential_layer_call_fn_34593952f243%&<?9
2?/
%?"
inputs??????????
p 

 
? "????????????
-__inference_Sequential_layer_call_fn_34593971f243%&<?9
2?/
%?"
inputs??????????
p

 
? "????????????
#__inference__wrapped_model_34593118?243%&7?4
-?*
(?%
	RNN_input??????????
? "B??
=
Dense_softmax,?)
Dense_softmax???????????
G__inference_dropout_6_layer_call_and_return_conditional_losses_34594856f8?5
.?+
%?"
inputs??????????
p 
? "*?'
 ?
0??????????
? ?
G__inference_dropout_6_layer_call_and_return_conditional_losses_34594868f8?5
.?+
%?"
inputs??????????
p
? "*?'
 ?
0??????????
? ?
,__inference_dropout_6_layer_call_fn_34594846Y8?5
.?+
%?"
inputs??????????
p 
? "????????????
,__inference_dropout_6_layer_call_fn_34594851Y8?5
.?+
%?"
inputs??????????
p
? "????????????
&__inference_signature_wrapper_34594325?243%&D?A
? 
:?7
5
	RNN_input(?%
	RNN_input??????????"B??
=
Dense_softmax,?)
Dense_softmax???????????
O__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_34594953?243^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p 
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
O__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_34594970?243^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
4__inference_simple_rnn_cell_5_layer_call_fn_34594922?243^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p 
? "F?C
?
0??????????
#? 
?
1/0???????????
4__inference_simple_rnn_cell_5_layer_call_fn_34594936?243^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p
? "F?C
?
0??????????
#? 
?
1/0??????????