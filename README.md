# timestep-demo
A demo created to test out three main topics: Timesteps, Motion (Integration), and Interpolation. Specifically for game development.

Use of the demo is pretty self-explanatory as I did my best to output directions to the screen.

Screen 1:
- The input screen.
- Navigate with the arrow keys and select choices with enter. Once a choice is selected you will advance to the next question.
- The letters in the top right represent the integration methods: Euler (E), Verlet (V), RK4 (R), Velocity Verlet (Y). The top row is for the first simulation and the bottom row is for the second. Simply press the corresponding key to select that integration method. Selecting a method will shift the focus to the other row.
- Once all choices are selected a prompt will pop up allowing you to advance to the first simulation by pressing 'S'.

Screen 2/3:
- The first and second simulations.
- Information on the simulations is displayed along the top.
- Once the cube reaches the end of the screen a prompt will allow you to press 'N'/'V' to move to the next room.

Screen 4:
- The results screen.
- This will allow you to compare the simulations.
- The middle column of numbers is the difference of both runs with the color indicating who had the larger number. Yellow indicates a tie.
- The columns furthest left and right are a comparison against a run set at a fixed timestep, 60 fps, running Euler. This was used for testing and usually does not show any interesting results.

Press ESC at any time to exit.

Thank you for using this demo I hope it helps in any way as creating it really helped me.

Any questions on the demo feel free to email me at teddickm@gmail.com