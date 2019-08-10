# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Storage.V1.Model.Object do
  @moduledoc """
  An object.

  ## Attributes

  *   `acl` (*type:* `list(GoogleApi.Storage.V1.Model.ObjectAccessControl.t)`, *default:* `nil`) - Access controls on the object.
  *   `bucket` (*type:* `String.t`, *default:* `nil`) - The name of the bucket containing this object.
  *   `cacheControl` (*type:* `String.t`, *default:* `nil`) - Cache-Control directive for the object data. If omitted, and the object is accessible to all anonymous users, the default will be public, max-age=3600.
  *   `componentCount` (*type:* `integer()`, *default:* `nil`) - Number of underlying components that make up this object. Components are accumulated by compose operations.
  *   `contentDisposition` (*type:* `String.t`, *default:* `nil`) - Content-Disposition of the object data.
  *   `contentEncoding` (*type:* `String.t`, *default:* `nil`) - Content-Encoding of the object data.
  *   `contentLanguage` (*type:* `String.t`, *default:* `nil`) - Content-Language of the object data.
  *   `contentType` (*type:* `String.t`, *default:* `nil`) - Content-Type of the object data. If an object is stored without a Content-Type, it is served as application/octet-stream.
  *   `crc32c` (*type:* `String.t`, *default:* `nil`) - CRC32c checksum, as described in RFC 4960, Appendix B; encoded using base64 in big-endian byte order. For more information about using the CRC32c checksum, see Hashes and ETags: Best Practices.
  *   `customerEncryption` (*type:* `GoogleApi.Storage.V1.Model.ObjectCustomerEncryption.t`, *default:* `nil`) - Metadata of customer-supplied encryption key, if the object is encrypted by such a key.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - HTTP 1.1 Entity tag for the object.
  *   `eventBasedHold` (*type:* `boolean()`, *default:* `nil`) - Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is the loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false.
  *   `generation` (*type:* `String.t`, *default:* `nil`) - The content generation of this object. Used for object versioning.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of the object, including the bucket name, object name, and generation number.
  *   `kind` (*type:* `String.t`, *default:* `storage#object`) - The kind of item this is. For objects, this is always storage#object.
  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - Cloud KMS Key used to encrypt this object, if the object is encrypted by such a key.
  *   `md5Hash` (*type:* `String.t`, *default:* `nil`) - MD5 hash of the data; encoded using base64. For more information about using the MD5 hash, see Hashes and ETags: Best Practices.
  *   `mediaLink` (*type:* `String.t`, *default:* `nil`) - Media download link.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - User-provided metadata, in key/value pairs.
  *   `metageneration` (*type:* `String.t`, *default:* `nil`) - The version of the metadata for this object at this generation. Used for preconditions and for detecting changes in metadata. A metageneration number is only meaningful in the context of a particular generation of a particular object.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the object. Required if not specified by URL parameter.
  *   `owner` (*type:* `GoogleApi.Storage.V1.Model.ObjectOwner.t`, *default:* `nil`) - The owner of the object. This will always be the uploader of the object.
  *   `retentionExpirationTime` (*type:* `DateTime.t`, *default:* `nil`) - A server-determined value that specifies the earliest time that the object's retention period expires. This value is in RFC 3339 format. Note 1: This field is not provided for objects with an active event-based hold, since retention expiration is unknown until the hold is removed. Note 2: This value can be provided even when temporary hold is set (so that the user can reason about policy without having to first unset the temporary hold).
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - The link to this object.
  *   `size` (*type:* `String.t`, *default:* `nil`) - Content-Length of the data in bytes.
  *   `storageClass` (*type:* `String.t`, *default:* `nil`) - Storage class of the object.
  *   `temporaryHold` (*type:* `boolean()`, *default:* `nil`) - Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. A common use case of this flag is regulatory investigations where objects need to be retained while the investigation is ongoing. Note that unlike event-based hold, temporary hold does not impact retention expiration time of an object.
  *   `timeCreated` (*type:* `DateTime.t`, *default:* `nil`) - The creation time of the object in RFC 3339 format.
  *   `timeDeleted` (*type:* `DateTime.t`, *default:* `nil`) - The deletion time of the object in RFC 3339 format. Will be returned if and only if this version of the object has been deleted.
  *   `timeStorageClassUpdated` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the object's storage class was last changed. When the object is initially created, it will be set to timeCreated.
  *   `updated` (*type:* `DateTime.t`, *default:* `nil`) - The modification time of the object metadata in RFC 3339 format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acl => list(GoogleApi.Storage.V1.Model.ObjectAccessControl.t()),
          :bucket => String.t(),
          :cacheControl => String.t(),
          :componentCount => integer(),
          :contentDisposition => String.t(),
          :contentEncoding => String.t(),
          :contentLanguage => String.t(),
          :contentType => String.t(),
          :crc32c => String.t(),
          :customerEncryption => GoogleApi.Storage.V1.Model.ObjectCustomerEncryption.t(),
          :etag => String.t(),
          :eventBasedHold => boolean(),
          :generation => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :kmsKeyName => String.t(),
          :md5Hash => String.t(),
          :mediaLink => String.t(),
          :metadata => map(),
          :metageneration => String.t(),
          :name => String.t(),
          :owner => GoogleApi.Storage.V1.Model.ObjectOwner.t(),
          :retentionExpirationTime => DateTime.t(),
          :selfLink => String.t(),
          :size => String.t(),
          :storageClass => String.t(),
          :temporaryHold => boolean(),
          :timeCreated => DateTime.t(),
          :timeDeleted => DateTime.t(),
          :timeStorageClassUpdated => DateTime.t(),
          :updated => DateTime.t()
        }

  field(:acl, as: GoogleApi.Storage.V1.Model.ObjectAccessControl, type: :list)
  field(:bucket)
  field(:cacheControl)
  field(:componentCount)
  field(:contentDisposition)
  field(:contentEncoding)
  field(:contentLanguage)
  field(:contentType)
  field(:crc32c)
  field(:customerEncryption, as: GoogleApi.Storage.V1.Model.ObjectCustomerEncryption)
  field(:etag)
  field(:eventBasedHold)
  field(:generation)
  field(:id)
  field(:kind)
  field(:kmsKeyName)
  field(:md5Hash)
  field(:mediaLink)
  field(:metadata, type: :map)
  field(:metageneration)
  field(:name)
  field(:owner, as: GoogleApi.Storage.V1.Model.ObjectOwner)
  field(:retentionExpirationTime, as: DateTime)
  field(:selfLink)
  field(:size)
  field(:storageClass)
  field(:temporaryHold)
  field(:timeCreated, as: DateTime)
  field(:timeDeleted, as: DateTime)
  field(:timeStorageClassUpdated, as: DateTime)
  field(:updated, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.Object do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.Object.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.Object do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end