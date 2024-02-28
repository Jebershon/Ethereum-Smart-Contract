// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;
 
contract Farmer{
    uint256 rate=8;
    uint256 order;
    string name;
    struct details{
        string name;
        uint phno;
        uint order;
        uint price;
    }
    mapping(string => uint256) public combine;

    details[] public person;

    function addOrder(string memory _name,uint256 _order,uint phone ) public{
        uint256 tot = _order*rate;
        person.push(details(_name,phone,_order,tot));
        combine[_name]=_order;   
}
}