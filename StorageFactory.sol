// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./SimpleStorage.sol";

contract StorageFctory{

    SimpleStorage[] public listOfSimpleStorage;

    function createSimpStorageContract() public {
        SimpleStorage newSimpleStorageContract=new SimpleStorage();
        listOfSimpleStorage.push(newSimpleStorageContract);
    }
    function sfstore(uint256 _simplestorageindex,uint256 _newsimplestoragenumber) public{
        SimpleStorage mySimpleStorage=SimpleStorage(listOfSimpleStorage[_simplestorageindex]);
        mySimpleStorage.store(_newsimplestoragenumber);
    }

}
