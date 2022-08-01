#!/usr/bin/env python
import click

@click.command()
def hello():
    click.echo('Hello world!')
    
    if __name__ == 'main':
        hello()
