/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class me_rjdj_zengarden_ZenGarden */

#ifndef _Included_me_rjdj_zengarden_ZenGarden
#define _Included_me_rjdj_zengarden_ZenGarden
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     me_rjdj_zengarden_ZenGarden
 * Method:    loadPdPatch
 * Signature: (Ljava/lang/String;Ljava/lang/String;IIIF)J
 */
JNIEXPORT jlong JNICALL Java_me_rjdj_zengarden_ZenGarden_loadPdPatch
  (JNIEnv *, jobject, jstring, jstring, jint, jint, jint, jfloat);

/*
 * Class:     me_rjdj_zengarden_ZenGarden
 * Method:    process
 * Signature: ([S[SJ)V
 */
JNIEXPORT void JNICALL Java_me_rjdj_zengarden_ZenGarden_process
  (JNIEnv *, jobject, jshortArray, jshortArray, jlong);

/*
 * Class:     me_rjdj_zengarden_ZenGarden
 * Method:    unloadPdPatch
 * Signature: (J)V
 */
JNIEXPORT void JNICALL Java_me_rjdj_zengarden_ZenGarden_unloadPdPatch
  (JNIEnv *, jobject, jlong);

#ifdef __cplusplus
}
#endif
#endif
