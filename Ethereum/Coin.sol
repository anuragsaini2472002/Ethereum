pragma solidity ^0.4.5;

contact Coin{

    address bank;
    mapping(address => uint) balances;
    constructor() public{
        bank==msg.sender;
    }
    
    function sendmoner(address sendto, uint amount) public returns(bool){
        if(msg.sender!=bank){
            return false;
        }
        else{
            balances[sendto]+=amount;
        }
    }

    function transfer(address sendto, uint amount) public returns(bool){
        if(msg.sender==bank){
            return false;
        }
        else{
            balance[msg.sender]-=amount;
            balances[sendto]+=amount;
            return true;
        }
    }

    function show() public view returns(uint){
        require(msg.sender!=bank,"Bank can not call");
        return balances[msg.sender];
    }
}
