# temperature-monitoring-verilog
project:
  name: "Temperature Monitoring System (Verilog)"
  description: >
    A beginner-friendly Verilog HDL simulation project that models a temperature monitoring system 
    with sensor simulation, threshold detection, and terminal-based display output.
  purpose: "For HDL learning and functional verification practice"
  difficulty: "Beginner to Intermediate"
  language: "Verilog HDL"
  tools:
    - EDA Playground
    - Icarus Verilog
    - EPWave (for waveform)
  diagram: |
    temp_sensor --> temp_monitor --> display_controller
       |               |                  |
    [Temp]         [Status]         [Printed Output]

files:
  - name: "temp_sensor.v"
    role: "Simulates temperature increasing over time"
  - name: "temp_monitor.v"
    role: "Classifies temperature as NORMAL, WARNING, or CRITICAL"
  - name: "display_controller.v"
    role: "Displays the status based on monitor output"
  - name: "top_tb.v"
    role: "Testbench to run and verify the design"
  - name: "README.md"
    role: "Project documentation and usage instructions"

simulation:
  tool: "Icarus Verilog"
  run_commands:
    - "iverilog -o temp_monitor_sim top_tb.v temp_sensor.v temp_monitor.v display_controller.v"
    - "vvp temp_monitor_sim"
  waveform_support:
    vcd: true
    dumpfile: "dump.vcd"
    dumpvars_call: "$dumpvars(0, top_tb);"

status_levels:
  - level: "NORMAL"
    condition: "temp < 50"
    code: "00"
  - level: "WARNING"
    condition: "50 <= temp < 70"
    code: "01"
  - level: "CRITICAL"
    condition: "temp >= 70"
    code: "10"

output_example: |
  Time: 0 | Temp: 20 | Status: 00
  Temperature Status: NORMAL
  Time: 100 | Temp: 50 | Status: 01
  Temperature Status: WARNING
  Time: 200 | Temp: 70 | Status: 10
  Temperature Status: CRITICAL

learning_outcomes:
  - Modular design in Verilog
  - Writing and using testbenches
  - Basic stimulus-response verification
  - Signal monitoring and waveform generation
  - Terminal-based behavioral output

author:
  name: "Your Name Here"
  license: "MIT (or specify your preferred license)"
  github_repo: "https://github.com/your-username/temperature-monitoring-verilog"
  contributions: "Open to pull requests, forks, and extensions"

