# `upgradeable-proxy`

![Foundry CI](https://github.com/marsfoundation/upgradeable-proxy/actions/workflows/ci.yml/badge.svg)
[![Foundry][foundry-badge]][foundry]
[![License: AGPL v3](https://img.shields.io/badge/License-AGPL%20v3-blue.svg)](https://github.com/marsfoundation/upgradeable-proxy//blob/master/LICENSE)

[foundry]: https://getfoundry.sh/
[foundry-badge]: https://img.shields.io/badge/Built%20with-Foundry-FFDB1C.svg

## Overview

The `upgradeable-proxy` repo consists of two contracts:
### `UpgradeableProxy.sol`
- A non-transparent proxy contract with minimal logic to allow for administrative permissioning and upgradeability.
- `rely`/`deny` are used to permission the proxy to call the implementation contract.
- `setImplementation` is used to upgrade the implementation contract.
### `UpgradeableProxied.sol`
- `UpgradeableProxied` is a contract designed to be inherited by **ANY AND ALL** implementations that are using `UpgradeableProxy.sol` as their proxy contract.
- This contract contains the same storage layout with the implementation address slot taken up by a dummy `bytes32` `slot0` variable to prevent malicious implementations from overwriting the implementation address slot.


## Testing

To run the tests, do the following:

```
gcl git@github.com:marsfoundation/upgradeable-proxy.git
cd upgradeable-proxy
forge test
```
