// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { UpgradeableProxied } from "../src/UpgradeableProxied.sol";

contract CounterImplementation is UpgradeableProxied {

    uint256 public number;

    mapping(bytes32 => uint256) public numberMapping;

    modifier auth {
        require(wards[msg.sender] == 1, "CounterImplementation/not-authed");
        _;
    }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function setNumberMapping(bytes32 key, uint256 newNumber) public auth {
        numberMapping[key] = newNumber;
    }

    function increment() public {
        number++;
    }

}
