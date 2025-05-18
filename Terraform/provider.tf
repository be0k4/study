# プロバイダーの設定例（OCIの場合）
provider "oci" {
  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaa7jb4qzf573524a2jspdmhjsealqq7ykeq3vbeo4bpbew6brr5nbq"
  user_ocid = "ocid1.user.oc1..aaaaaaaa4ztkkvprjs54254p6c7prq6s26widpiwqzsii5v7eoiyugazwqma" 
  private_key_path = "C:/Users/PN0010_User/.oci/oci_api_key.pem"
  fingerprint = "2c:98:b4:cb:c7:ee:bf:cb:57:4c:ce:bf:a5:b2:32:b2"
  region = "ap-tokyo-1"
}