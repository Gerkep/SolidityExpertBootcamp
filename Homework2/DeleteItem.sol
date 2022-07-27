// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract DeleteItems {

    uint[] public array;

    constructor(){
        array.push(1);
        array.push(2);
        array.push(3);
    }

    function getArray() public view returns(uint[] memory){
        return array;
    }

    function removeByNumber(uint256 number) public {
        for (uint256 i = 0; i < array.length - 1; i++) {
            uint currentNum = array[i];
            if(array[i] == number){
                array[i] = array[i+1];
                array[i+1] = currentNum;
            }
        }
        array.pop();
    }

    function removeByIndex(uint256 index) public {
        for (uint256 i = index; i < array.length - 1; i++) {
            array[i] = array[i+1];
        }
        array.pop();
    }
}