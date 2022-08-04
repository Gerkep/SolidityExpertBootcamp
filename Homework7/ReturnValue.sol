// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;
contract Homework {
    
    function returnValue(uint value) public pure returns(uint256){
        assembly{
            let result := value
            mstore(0x0, result)         
            return(0x0, 32)
        }
    }
}