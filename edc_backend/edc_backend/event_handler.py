"""A simple event handler class for handling events"""
from typing import Generic, TypeVar

T = TypeVar('T')

class EventHandler(Generic[T]):
    """A simple event handler class"""
    def __init__(self):
        self.observers = []

    def register(self, callback):
        """register a callback for an event"""
        self.observers.append(callback)


    def unregister(self, callback):
        """unregister a callback for an event"""
        for observer in self.observers:
            if observer == callback:
                self.observers.remove(observer)

    def fire(self, event_args: T):
        """fire an event"""
        for observer in self.observers:
            observer(event_args)
