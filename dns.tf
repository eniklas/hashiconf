provider "dnsimple" {
  token   = "abcd1234"
  account = "none"
 domain = "hashi.com"
 type   = "A"
 name   = "test"
 value  = "${aws_instance.web.0.public_ip}"

 #Alternatively:
 #value = "${element(aws_instance.web.*.public_ip, 0)}"
}
