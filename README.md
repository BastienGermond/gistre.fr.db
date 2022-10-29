# gistre.fr.db

This repository is used to configure the DNS zone for gistre.fr.

## Adding/Modifying an entry

Requirements:
- You must be part of the GISTRE @ EPITA.
- Of course, this requires from me to verify you are part of this group with the CRI database.

Law Breaking, bullying, harmful content will be removed and the user ban from any further
modification wihout Notice.

### Verification process

As I'm an alumnis from the school I will use this process:

1) Check that the committer email (@epita.fr only) is part of the gistre group
(https://cri.epita.fr/group/ing-gistre/)
2) If the committer is part of the group and the commit has a PGP Signature, then I will check if
the email [is verified](https://keys.openpgp.org/about/usage#gnupg-upload) on
https://keys.openpgp.org and if so then it will be merged :)
3) In case the commit is not signed and/or the email is not verified, I will send you an Email
on your @epita.fr just to confirm that you are the Pull Request's author. It will be merged after
you have replied.

### dns.nix

My infrastructure is based on Nix/NixOs and I use [dns.nix](https://github.com/kirelagin/dns.nix)
to configure my zone. Fell free, to check the repository for documentation about what is possible
with dns.nix.

The gistre zone can be found in [gistre.fr.db.nix](/gistre.fr.db.nix), don't forget to change the
serial number folowing the formatting specified in the file.

## Closing words

If you are completly lost with what I just wrote, send me an email or open an Issue and I will try
to help you.
