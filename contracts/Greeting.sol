// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Greeting {
    string public greeting = "hello";
     event DataStored(uint256 data1, uint256 indexed data2);
   uint256 data1;
   uint256 data2;
    function sayHello() external view returns (string memory) {
        return greeting;
    }

    function updateGreeting(string calldata _greeting) external {
        greeting = _greeting;
    }

   function storeData(uint256 _data1, uint256 _data2) external {
      data1 = _data1;
      data2 = _data2;
      emit DataStored(data1, data2);
   }
    function withdraw(uint256 amount) external {
        // This forwards all available gas. Be sure to check the return value!
        (bool success, ) = msg.sender.call({'value':amount});
        require(success, "Transfer failed.");
    }
}