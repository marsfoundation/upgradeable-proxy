// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { IUpgradeableProxied } from "./interfaces/IUpgradeableProxied.sol";

contract UpgradeableProxied is IUpgradeableProxied {

    bytes32 private slot0;

    mapping (address => uint256) public override wards;

}
