
pragma solidity ^0.4.17;


contract Collection {

    address public payee;
    address public collector;


    // Constuctor function to initiate collection contract
    function initCollection(address _payee, address _collector) public {
        payee = _payee;
        collector = _collector;
    }

     // function to allow the contract to recieve payments
     function() public payable {

     }


    // collect payments from payees
   function collectPayments(uint value) public  returns(bool success) {
        require(msg.sender == collector);
        require(address(this).balance >= value);
        msg.sender.transfer(value);
        return true;
    }


}

