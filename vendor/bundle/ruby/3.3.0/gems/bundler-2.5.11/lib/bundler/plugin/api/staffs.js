// src/api/staffs.js

export const getStaffs = async () => {
    try {
      const response = await fetch('/api/staffs'); // Example API endpoint
      if (!response.ok) {
        throw new Error('Failed to fetch staffs');
      }
      return await response.json();
    } catch (error) {
      console.error('Error fetching staffs:', error);
      return [];
    }
  };
  