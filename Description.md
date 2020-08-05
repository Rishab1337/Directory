To describe the verilog RTL code for tic tac toe game.
Verification of functionality of the RTL code using Xilinx Vivado Simulator.

The FSM is formulated according to the given logic: 


1. STAND(00): To wait for player/computer, FSM is in IDLE state.
2. PARTICIPANT(01): Player's turn to play and ''01'' is the decoded position.
3. COMPUTER(10): Computer's turn to play and ''10'' to be stored into the decoded position.
4. END_GAME(11): The game is finished when there is a winner or no more space to play.
 
Inputs of the module

a. Reset : Reset = 1: Reset the game in the END_GAME state.
           Reset = 0: Game starts

b. Play: Play = 1: When in STAND state, switches the controller to the PARTICIPANT state and the player plays.
         Play = 0: Stay in the STAND state.

c. PC: PC = 1: When in COMPUTER state, PC=1 switches to the IDLE state and the computer plays. 
       PC = 0 : Stays in COMPUTER state.

d. Illegal_move: Illegal_move = 0: When in PARTICIPANT state, Illegal_move = 0 is to switch to COMPUTER state and let computer plays when PC = 1.
                 Illegal_move = 1: Illegal moving from the player/ computer and switch to the STAND state.
                 
e. No_space : No_space = 0: checks for space to play, if No_Space = 0 it continues the game.
              No_space = 1: no more space to play, game over, and need to reset the game before playing again.
             
f. Win: Win = 0: Still waiting for the winner
        Win = 1: Winner is selected and the game is ended.
        Note : Reset to play again
