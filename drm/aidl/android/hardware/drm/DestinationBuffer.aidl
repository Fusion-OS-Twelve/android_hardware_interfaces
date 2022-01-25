/*
 * Copyright (C) 2021 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.hardware.drm;

import android.hardware.common.NativeHandle;
import android.hardware.drm.BufferType;
import android.hardware.drm.SharedBuffer;

/**
 * A decrypt destination buffer can be either normal user-space shared
 * memory for the non-secure decrypt case, or it can be a secure buffer
 * which is referenced by a native-handle. The native handle is allocated
 * by the vendor's buffer allocator.
 */
@VintfStability
parcelable DestinationBuffer {
    /**
     * The type of the buffer
     */
    BufferType type;
    /**
     * If type == SHARED_MEMORY, the decrypted data must be written
     * to user-space non-secure shared memory.
     */
    SharedBuffer nonsecureMemory;
    /**
     * If type == NATIVE_HANDLE, the decrypted data must be written
     * to secure memory referenced by the vendor's buffer allocator.
     */
    NativeHandle secureMemory;
}