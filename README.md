# temperature-monitoring-verilog
# ================================
# Project Basic Information
# ================================
project:
  name: "Temperature Monitoring System (Verilog)"
  description: >
    A beginner-friendly Verilog HDL simulation project modeling a temperature monitoring system.
    Simulates sensor data, monitors temperature thresholds, and prints status to terminal.
  purpose: "For HDL learning and functional verification practice"
  difficulty: "Beginner to Intermediate"
  language: "Verilog HDL"
  tools:
    - EDA Playground (browser simulation)
    - Icarus Verilog (command line simulator)
    - EPWave (waveform viewer)

# ================================
# Design Overview Diagram
# ================================
diagram: |
  +----------------+     +----------------+     +----------------------+
  |  temp_sensor   | --> |  temp_monitor  | --> |  display_controller  |
  +----------------+     +----------------+     +----------------------+
         |                     |                          |
       [Temp]              [Status]               [Printed Output]

# ================================
# Files and Roles
# ================================
files:
  - name: "temp_sensor.v"
    role: "Simulates temperature increasing over time"
  - name: "temp_monitor.v"
    role: "Classifies temperature as NORMAL, WARNING, or CRITICAL"
  - name: "display_controller.v"
    role: "Displays the status message in terminal"
  - name: "top_tb.v"
    role: "Testbench to simulate the full system"
  - name: "README.md"
    role: "Project documentation and instructions"

# ================================
# Simulation Instructions
# ================================
simulation:
  tool: "Icarus Verilog"
  run_commands:
    - "iverilog -o temp_monitor_sim top_tb.v temp_sensor.v temp_monitor.v display_controller.v"
    - "vvp temp_monitor_sim"
  waveform_support:
    vcd_file: "dump.vcd"
    enable_dumping: true
    dumpfile_command: '$dumpfile("dump.vcd");'
    dumpvars_command: '$dumpvars(0, top_tb);'

# ================================
# Temperature Status Levels
# ================================
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

# ================================
# Example Output
# ================================
output_example: |
  Time: 0 | Temp: 20 | Status: 00
  Temperature Status: NORMAL

  Time: 100 | Temp: 50 | Status: 01
  Temperature Status: WARNING

  Time: 200 | Temp: 70 | Status: 10
  Temperature Status: CRITICAL

# ================================
# Learning Outcomes
# ================================
learning_outcomes:
  - Modular digital design with Verilog modules
  - Writing and running testbenches for verification
  - Generating and analyzing waveform files (.vcd)
  - Understanding stimulus-response verification concepts
  - Simulating hardware behavior in software



