# chef-rails-host-cookbook

Installs nginx, passenger, ruby and postgresql configured for a deployment from Capistrano

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['chef-rails-host']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### chef-rails-host::default

Include `chef-rails-host` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[chef-rails-host::default]"
  ]
}
```

## License and Authors

Author:: YOUR_NAME (<YOUR_EMAIL>)
