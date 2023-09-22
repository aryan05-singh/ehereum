// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
 

interface ERC20 {
function totalSupply() external view returns (uint256);
function balanceOf(address account) external view returns (uint256);
function transfer(address recipient, uint256 amount) external returns (bool);

// event Transfer(address indexed from, address indexed to, uint256 value);
}
contract CTToken is ERC20{

    string public constant name = "ERCTOKEN";
    string public constant symbol = "T";
uint256 public constant decimals = 0;


    event Approval(address indexed tokenOwner, address indexed spender,uint tokens);
    event Transfer(address indexed from, address indexed to,uint tokens);

  

    mapping(address => uint256) balances;
    mapping(address => mapping (address => uint256)) allowed;
uint256   totalSupply_ = 100000 wei;


    constructor()   {
        balances[msg.sender] = totalSupply_;
        
    }


    function totalSupply() public override view returns (uint256){
        return totalSupply_;
    }

    function balanceOf(address tokenOwner) public override view returns (uint256){
      return balances[tokenOwner];  
    }

   
    function transfer(address receiver, uint256 numTokens) public override returns (bool){
        require(numTokens <= balances[msg.sender] );
        balances[msg.sender] -= numTokens;
        balances[receiver] += numTokens;
emit Transfer(msg.sender,receiver,numTokens);
          return true;

       }
}