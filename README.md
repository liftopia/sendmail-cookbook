sendmail
=================
Install and configure sendmail with a relay host. More TBD.

Requirements
------------
Currently, this only supports ubuntu.

Attributes
----------

e.g.
#### sendmail::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['sendmail']['relay_host']</tt></td>
    <td>String</td>
    <td>which host to relay to</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['sendmail']['relay_port']</tt></td>
    <td>String</td>
    <td>which port to relay on</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['sendmail']['relay_username']</tt></td>
    <td>String</td>
    <td>when relaying, which username to login with</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['sendmail']['relay_password']</tt></td>
    <td>String</td>
    <td>when relaying, which password to login with</td>
    <td><tt>nil</tt></td>
  </tr>
</table>

Usage
-----
#### sendmail::default
Just include `sendmail` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[sendmail]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
License: MIT
Authors: Liftopia
