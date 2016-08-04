ifneq ($(TARGET_SIMULATOR),true)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS += -Wall
LOCAL_CFLAGS += -Wfatal-errors 

LOCAL_DISABLE_FATAL_LINKER_WARNINGS=true

APP_STL := stlport_static

LOCAL_LDLIBS := -L$(LOCAL_PATH)/lib -g

TARGET_ARCH_ABI := armeabi-v7a
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include

LOCAL_SRC_FILES:= gemm.c utils.c cuda.c deconvolutional_layer.c convolutional_layer.c list.c image.c activations.c im2col.c col2im.c blas.c crop_layer.c dropout_layer.c maxpool_layer.c softmax_layer.c data.c matrix.c network.c connected_layer.c cost_layer.c parser.c option_list.c darknet.c detection_layer.c imagenet.c captcha.c route_layer.c writing.c box.c nightmare.c normalization_layer.c avgpool_layer.c coco.c dice.c yolo.c layer.c compare.c classifier.c local_layer.c swag.c shortcut_layer.c activation_layer.c rnn_layer.c gru_layer.c rnn.c rnn_vid.c crnn_layer.c demo.c tag.c cifar.c go.c batchnorm_layer.c art.c

LOCAL_MODULE := darknet

LOCAL_CFLAGS += -pie -fPIE
LOCAL_LDFLAGS += -pie -fPIE

include $(BUILD_EXECUTABLE)

endif  # TARGET_SIMULATOR != true