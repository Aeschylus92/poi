{layout, $, $$, React, ReactBootstrap} = window
{Grid, Col} = ReactBootstrap
{config, proxy} = window
{TeitokuPanel, MissionPanel, NdockPanel, KdockPanel, TaskPanel} = require './parts'
module.exports =
  name: 'MainView'
  priority: 0
  displayName: '概览'
  description: '概览面板，提供基本的概览界面'
  reactClass: React.createClass
    render: ->
      xs = 3
      xs = 6 if layout == 'horizonal'
      <div>
        <TeitokuPanel />
        <Grid className="panel-container">
          <Col xs={xs} className="panel-col">
            <MissionPanel />
          </Col>
          <Col xs={xs} className="panel-col">
            <NdockPanel />
          </Col>
          <Col xs={xs} className="panel-col">
            <KdockPanel />
          </Col>
          <Col xs={xs} className="panel-col task-panel">
            <TaskPanel />
          </Col>
        </Grid>
      </div>
