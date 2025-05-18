#コンピュートインスタンス生成用ひな形
resource "oci_core_instance" "ubuntu_instance" {
    #Required
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
    compartment_id = "ocid1.compartment.oc1..aaaaaaaaxt7cfstamar3wfhy47w2fj743b2dn4rckbggh6vrfrdfqk3yyohq"
    shape = "VM.Standard.A1.Flex"
    shape_config {
        ocpus         = 1
        memory_in_gbs = 6
    }

    source_details {
        source_id = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaajuc6zkusxi3ynbptr5j2ejyg6eqgfaotyrlqlvjedbcbypueuo4q"
        source_type = "image"
    }

    # Optional
    display_name = "tf_test"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = "ocid1.subnet.oc1.ap-tokyo-1.aaaaaaaatiat3o4dogifs4rzahs3wsh3livrpleytgx54nkehhdtktdrkc4a"
    }
    metadata = {
        ssh_authorized_keys = file("C:/Users/PN0010_User/.oci/oci_ssh_key.pub")
    } 
    preserve_boot_volume = false
}