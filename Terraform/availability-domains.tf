# availability-domains.tf
# アベイラビリティドメインのデータ取得
data "oci_identity_availability_domains" "ads" {
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaa7jb4qzf573524a2jspdmhjsealqq7ykeq3vbeo4bpbew6brr5nbq"
}