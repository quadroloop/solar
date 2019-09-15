pragma solidity ^0.4.17;

contract Log {

   string data = "hello";

    function writeData(string _newData) public {
        data = _newData;
    }

    function getData() public view returns (string) {
        return data;
    }

}