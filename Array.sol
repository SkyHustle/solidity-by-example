// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Array {
    uint[] public arr;
    uint[] public arr2 = [1,2,3];
    uint[10] public arr3FixedSize;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        arr.push(i);
    }

    function pop() public {
        // remove last element
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint index) public {
        delete arr[index];
    }

    function examples() external pure returns(uint) {
        // create array in memory, only fixed size can be created
        uint[] memory a = new uint[](5);
        return a[0];
    }
}